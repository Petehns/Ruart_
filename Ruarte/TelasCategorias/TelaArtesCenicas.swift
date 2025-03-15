//
//  TelaArtesVisuais.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaArtesCenicas: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationStack {
            ScrollView{
//                NavigationLink(destination: {TelaLugares(title: santaIsabelTitle, location: santaIsabelLocation, description: santaIsabelDescription, navTitle: santaIsabelNavTitle, images: santaIsabelImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
                NavigationLink(destination: {TelaLugares(place: allPlaces[9], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                    
                    AsyncImage(url: URL(string: allPlaces[9].images[0])) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 390, height: 260)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                })
                NavigationLink(destination: {TelaLugares(place: allPlaces[8], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                    
                    AsyncImage(url: URL(string: allPlaces[8].images[0])) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 390, height: 200)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }
                })
                HStack{
                   
                    NavigationLink(destination: {TelaLugares(place: allPlaces[4], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[4].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 193, height: 135)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
                    NavigationLink(destination: {TelaLugares(place: allPlaces[5], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[5].images[0])) { image in
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
            .navigationTitle("Artes Cênicas")
            
            .toolbar {
          
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaArtesCenicas()
}
