//
//  SavedLocation.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 28/09/24.
//

import SwiftUI
import MapKit
import SwiftData

@Model
class SavedLocation: Identifiable {
    var id = UUID()
    var name: String
    var latitude: Double
    var longitude: Double
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
    }
}

struct UnifiedSheetView: View {
    @Environment(\.modelContext) private var context
    @State private var locationService = LocationService(completer: .init())
    @State private var search: String = ""
    @Binding var searchResults: [SearchResult]
    @Binding var selectedLocation: SearchResult?
    @State private var selectedDetent: PresentationDetent = .height(96)
    @Binding var placeImages: [URL?]
    @Query private var savedLocations: [SavedLocation]

    var body: some View {
        VStack {
            if let location = selectedLocation {
                placeDetailView(for: location)
            } else {
                searchView
            }
        }
        .interactiveDismissDisabled()
        .presentationDetents([.height(96), .medium], selection: $selectedDetent)
        .presentationBackground(Color.blueRuart)
        .presentationBackgroundInteraction(.enabled(upThrough: .medium))
    }

    @State private var isLoading = false

    private var searchView: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Procure por algum lugar", text: $search)
                    .autocorrectionDisabled()
                    .onSubmit {
                        Task {
                            isLoading = true
                            searchResults = (try? await locationService.search(with: search)) ?? []
                            isLoading = false
                        }
                    }
                
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding(.leading, 8)
                }
            }
            .padding()
            .background(Color.white.opacity(0.4))  // Fundo semi-transparente
            .cornerRadius(100)  // Bordas arredondadas
            Spacer()

            List {
                ForEach(locationService.completions) { completion in
                    Button(action: { didTapOnCompletion(completion) }) {
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text(completion.title)
                                    .font(.headline)
                                    .fontDesign(.rounded)

                                Button(action: {
                                    toggleSave(for: completion)
                                }, label: {
                                    Image(systemName: isLocationSaved(completion) ? "star.fill" : "star")
                                        .foregroundColor(isLocationSaved(completion) ? .yellow : .primary)
                                })
                            }
                            Text(completion.subTitle)
                            if let url = completion.url {
                                Link(url.absoluteString, destination: url)
                                    .lineLimit(1)
                            }
                        }
                    }
                    .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
        }
        .padding()
        .onChange(of: search) {
            locationService.update(queryFragment: search)
        }
    }


    private func placeDetailView(for location: SearchResult) -> some View {
        VStack(alignment: .leading) {
            Spacer()
            
            HStack {
                Button("Voltar") {
                    selectedLocation = nil
                    selectedDetent = .height(96)
                }
                .padding()

                Spacer()

                Button(action: {
                    toggleSave(for: SearchCompletions(title: location.title, subTitle: location.subTitle ?? "", latitude: location.latitude, longitude: location.longitude))
                }, label: {
                    Image(systemName: isLocationSaved(SearchCompletions(title: location.title, subTitle: location.subTitle ?? "", latitude: location.latitude, longitude: location.longitude)) ? "star.fill" : "star")
                })
                .padding(.trailing)
            }

            Text(location.title)
                .font(.title2)
                .multilineTextAlignment(.leading)
                .padding([.leading, .trailing, .bottom])
                .lineLimit(nil)
                .minimumScaleFactor(0.75)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if let subtitle = location.subTitle, !subtitle.isEmpty {
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .trailing, .bottom])
            }

            if let url = location.url {
                Link("\(url)", destination: url)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding([.leading, .trailing])
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
            }

            if placeImages.isEmpty {
                Text("Nenhuma imagem disponível")
                    .foregroundColor(.gray)
                    .padding(.leading)
            } else {
                ForEach(placeImages.compactMap { $0 }, id: \.self) { url in
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, minHeight: 340, maxHeight: 340)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                    .cornerRadius(10)
                }
            }
        }
        .padding([.top, .bottom])
        .onAppear {
            selectedDetent = .medium
            print("location is \(location)")
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }


    private func didTapOnCompletion(_ completion: SearchCompletions) {
        Task {
            if let singleLocation = try? await locationService.search(with: "\(completion.title) \(completion.subTitle)").first {
                searchResults = [singleLocation]
                selectedLocation = singleLocation
                selectedDetent = .medium
            }
        }
    }

    // MARK: - Helper Methods

    private func toggleSave(for completion: SearchCompletions) {
        if let savedLocation = savedLocations.first(where: {
            $0.latitude == completion.latitude && $0.longitude == completion.longitude
        }) {

            context.delete(savedLocation)
        } else {

            let newLocation = SavedLocation(
                name: completion.title,
                latitude: completion.latitude ?? 0,
                longitude: completion.longitude ?? 0
            )
            context.insert(newLocation)
        }
    }

    private func isLocationSaved(_ completion: SearchCompletions) -> Bool {
        return savedLocations.contains(where: {
            $0.latitude == completion.latitude && $0.longitude == completion.longitude
        })
    }
}
