//
//  SearchableMap.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 28/09/24.
//




//import SwiftUI
//import MapKit
//
//struct SearchableMap: View {
//    @State private var cameraPosition = MapCameraPosition.region(
//        MKCoordinateRegion(
//            center: CLLocationCoordinate2D(latitude: -8.05428, longitude: -34.8813),
//            span: MKCoordinateSpan(latitudeDelta: 0.36, longitudeDelta: 0.36)
//        )
//    )
//    
//    @State private var locationService = LocationService(completer: .init())
//    @State private var searchResults = [SearchResult]()
//    @State private var selectedLocation: SearchResult?
//    @State private var placeImages: [URL?] = []
//    
//    @State private var isSheetPresented: Bool = true
//    
//    
//    var location: SavedLocation?
//
//    var body: some View {
//        mapView
//            .ignoresSafeArea()
//            .onChange(of: selectedLocation) { newValue in
//                if let location = newValue {
//                    Task {
//                        placeImages = await locationService.fetchImages(for: [location])
//                    }
//                }
//            }
//            .onChange(of: searchResults) { newValue in
//                if !newValue.isEmpty {
//                    isSheetPresented = true
//                }
//            }
//            .sheet(isPresented: $isSheetPresented) {
//                UnifiedSheetView(
//                    searchResults: $searchResults,
//                    selectedLocation: $selectedLocation,
//                    placeImages: $placeImages
//                )
//            }
//            .onAppear {
//                
//                if let location = location {
//                    cameraPosition = MapCameraPosition.region(
//                        MKCoordinateRegion(
//                            center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude),
//                            span: MKCoordinateSpan(latitudeDelta: 0.36, longitudeDelta: 0.36)
//                        )
//                    )
//                }
//            }
//    }
//
//    private var mapView: some View {
//        Map(position: $cameraPosition, selection: $selectedLocation) {
//            ForEach(searchResults) { result in
//                Marker(coordinate: result.location) {
//                    Image(systemName: "mappin.circle.fill")
//                        .foregroundColor(.red)
//                        .font(.title)
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    SearchableMap()
//}
import SwiftUI
import MapKit

struct SearchableMap: View {
    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -8.05428, longitude: -34.8813),
            span: MKCoordinateSpan(latitudeDelta: 0.36, longitudeDelta: 0.36)
        )
    )
    
    @State private var locationService = LocationService(completer: .init())
    @State private var searchResults = [SearchResult]()
    @State private var selectedLocation: SearchResult?
    @State private var placeImages: [URL?] = []
    @State private var isSheetPresented: Bool = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    @State private var search: String = ""
    @State private var isLoading = false
    var location: SavedLocation?

    var body: some View {
        NavigationStack{
            VStack{
                mapView
                    .ignoresSafeArea()
                    .onChange(of: selectedLocation) { newValue in
                        if let location = newValue {
                            Task {
                                placeImages = await locationService.fetchImages(for: [location])
                            }
                        }
                    }
                    .onChange(of: searchResults) { newValue in
                        if !newValue.isEmpty {
//                            isSheetPresented = true
                        }
                    }
//                    .sheet(isPresented: $isSheetPresented) {
//                        UnifiedSheetView(
//                            searchResults: $searchResults,
//                            selectedLocation: $selectedLocation,
//                            placeImages: $placeImages
//                        )
//                    }
//                    .onAppear {
//                        if let location = location {
//                            cameraPosition = MapCameraPosition.region(
//                                MKCoordinateRegion(
//                                    center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude),
//                                    span: MKCoordinateSpan(latitudeDelta: 0.36, longitudeDelta: 0.36)
//                                )
//                            )
//                        }
//                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationTitle("Mapa")
            .toolbar{
//                ToolbarItem(placement: .navigationBarLeading){
//                    NavigationLink(destination: {Favorites()}, label:{
//                        
//                        Image(systemName: "star")
//                    })
//                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        isSheetPresented.toggle()
                    }) {
                        if isSheetPresented == true {
                            Image(systemName: "xmark.circle.fill")
                        }else{
                            Image(systemName: "magnifyingglass")
                        }
                    }
                }
            }
            }
        .sheet(isPresented: $isSheetPresented) {
            UnifiedSheetView(
                searchResults: $searchResults,
                selectedLocation: $selectedLocation,
                placeImages: $placeImages
            )
        }
        .onAppear {
            if let location = location {
                cameraPosition = MapCameraPosition.region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude),
                        span: MKCoordinateSpan(latitudeDelta: 0.36, longitudeDelta: 0.36)
                    )
                )
            }
        }
    }

    private var mapView: some View {
        Map(position: $cameraPosition, selection: $selectedLocation) {
            if let location = location {
                Marker(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                }
                .tag(location)
            }
        }
    }
    }

#Preview {
    SearchableMap()
}
