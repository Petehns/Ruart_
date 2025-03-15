//
//  TelaArtesVisuais.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaArtesVisuais: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationStack {
            ScrollView{
                ZStack {
                    NavigationLink(destination: {TelaLugares(place: allPlaces[0], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[0].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 390, height: 260)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
               
                    
                    VStack {
                        Spacer()
                        HStack {
                            Text(allPlaces[0].title)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .shadow(color: .black, radius: 10, x: 2, y: 2)
                               
                            Spacer()
                        }
                    }
                    .padding()
                }
                HStack(spacing: -5){
                    ZStack {
                        NavigationLink(destination: {TelaLugares(place: allPlaces[2], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                            
                            AsyncImage(url: URL(string: allPlaces[2].images[0])) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 193, height: 135)
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                        })
                        VStack {
                            Spacer()
                            HStack {
                                Text(allPlaces[2].navTitle)
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .shadow(color: .black, radius: 10, x: 2, y: 2)
                                Spacer()
                            }
                        }
                        .padding()
                    }
                    ZStack {
                        NavigationLink(destination: {TelaLugares(place: allPlaces[1], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                            
                            AsyncImage(url: URL(string: allPlaces[1].images[0])) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 193, height: 135)
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                        })
                        VStack {
                            Spacer()
                            HStack {
                                Text(allPlaces[1].navTitle)
                                    .font(.title)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .shadow(color: .black, radius: 10, x: 2, y: 2)
                                Spacer()
                            }
                        }
                        .padding()
                    }
                }
                ZStack {
                    NavigationLink(destination: {TelaLugares(place: allPlaces[3], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[3].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 390, height: 260)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
                    VStack {
                        Spacer()
                        HStack {
                            Text(allPlaces[3].title)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .shadow(color: .black, radius: 10, x: 2, y: 2)
                            Spacer()
                        }
                    }
                    .padding()
                }
                ZStack {
                    NavigationLink(destination: {TelaLugares(place: allPlaces[23], viewModel: PlaceViewModel(places: allPlaces))}, label: {
                        
                        AsyncImage(url: URL(string: allPlaces[23].images[0])) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 390, height: 260)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                    })
                    VStack {
                        Spacer()
                        HStack {
                            Text(allPlaces[23].title)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                                .shadow(color: .black, radius: 10, x: 2, y: 2)
                            Spacer()
                        }
                    }
                    .padding()
                }
                
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Artes Visuais")
            
            .toolbar {
             
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaArtesVisuais()
}
