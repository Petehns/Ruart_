//
//  TelaMusica.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaMusica: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationStack {
            ScrollView{
                NavigationLink(destination: {TelaLugares(place: allPlaces[15], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                    
                    AsyncImage(url: URL(string: allPlaces[15].images[0])) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 390, height: 260)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                })
                NavigationLink(destination: {TelaLugares(place: allPlaces[16], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                    
                    AsyncImage(url: URL(string: allPlaces[16].images[0])) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 390, height: 200)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                })
                NavigationLink(destination: {TelaLugares(place: allPlaces[14], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                    AsyncImage(url: URL(string: allPlaces[14].images[0])) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 193, height: 135)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
        
                })
                HStack{
                    NavigationLink(destination: {TelaLugares(place: allPlaces[13], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[13].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 193, height: 135)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
                    NavigationLink(destination: {TelaLugares(place: allPlaces[24], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[24].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 193, height: 135)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
                }
                
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Música")
            
            .toolbar {
         
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaMusica()
}
