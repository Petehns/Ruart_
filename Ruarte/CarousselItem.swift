////
////  CarousselItem.swift
////  Ruarte
////
////  Created by Pedro Henrique Nunes da Silveira Bezerra on 02/04/25.
////
//
//import SwiftUI
//
//
//struct ApresentacaoDoLocalView: View {
//    let place: PlaceModel
//    
//    var body: some View {
//        VStack {
//            NavigationLink(
//                destination: AnyView(caroussel.destinationB[index]),
//                label: {
//                    VStack {
//                        ZStack {
//                            AsyncImage(url: URL(string: caroussel.images[index])) { image in
//                                
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.18)
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .cornerRadius(10.0)
//                            .clipped()
//                            HStack{
//                                Spacer()
//                                VStack{
//                                    if place.beenVisited{
//                                        Image("Selo")
//                                        Spacer()
//                                    }
//                                }
//                            }
//                            .padding(.top, 2)
//                        }
//
//                        Spacer()
//                        VStack(alignment: .leading, spacing: 2) {
//                            HStack {
//                                Text("\(caroussel.titles[index])")
//                                    .multilineTextAlignment(.leading)
//                                    .padding(.leading, 8)
////                                                    .padding(.leading, 10)
////                                                    .padding(.bottom, 10)
//                                    .font(.system(size: 17, weight: .semibold, design: .rounded))
//                                    .foregroundStyle(Color.pretobranco)
//                                Spacer()
//                            }
//                            
//                            HStack {
//                               
//                                Button(action:{
//                                    place.isFavorite.toggle()
//                                }, label: {
//                                    Image(systemName: place.isFavorite ? "star.fill" : "star")
//                                    .foregroundStyle(place.isFavorite ? Color.amarelin : Color.pretobranco)
//                                })
//                                .padding(.bottom, 1)
//                                HStack {
//                                    Button(action: {
//                                        if let url = URL(string: "maps://?q=\(caroussel.latitudeCarroussel[index]),\(caroussel.longitudeCarroussel[index])") {
//                                            UIApplication.shared.open(url)
//                                        }
//                                    }) {
//                                        HStack {
//                                            Image(systemName: "location.circle.fill")
//                                                .foregroundStyle(Color.pretobranco)
//                                            Text("Ir!")
//                                                .foregroundStyle(Color.pretobranco)
//                                        }
//                                    }
//                                }
//
//                                
//                            }
//                            .padding(.bottom, 10)
//                            .padding(.leading, 8)
//                        }
//                        
//                    }
//                    .background(Color.fundocarrossel)
//                    .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.25)
//                    .cornerRadius(15)
//                }
//            )
//            
//        }
//    }
//}
