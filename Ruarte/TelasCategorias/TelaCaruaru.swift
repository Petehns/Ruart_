//
//  TelaCaruaru.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaCaruaru: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    @AppStorage("statusBotao") var statusBotao: Bool = true
    var body: some View {
        NavigationStack {
            Spacer()
            ScrollView{
//                NavigationLink(destination: {TelaLugares(title: saoJoaoCaruaruTitle, location: saoJoaoCaruaruLocation, description: saoJoaoCaruaruDescription, navTitle: saoJoaoCaruaruTitle, images: saoJoaoCaruaruImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    ZStack {
//                        AsyncImage(url: URL(string: saoJoaoCaruaruImages[0])) { image in
//                                               image
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: 379)
//                                .frame(height: 250)
//                                                  
//                   //                                                                                      .aspectRatio(contentMode: .fit)
//                                               
//                                           } placeholder: {
//                                               ProgressView()
//                                              
//                                           }
//                                           Rectangle()
//                                               .fill(LinearGradient(
//                                                gradient: Gradient(colors: [Color.black, Color.clear]),
//                                                startPoint: .bottom,
//                                                endPoint: .top)
//                                               )
//                                           VStack {
//                                               Spacer()
//                                               HStack {
//                                                   Text(saoJoaoCaruaruTitle)
//                   //
//                                                       .padding(.leading, 15)
//                                                       .padding(.bottom, 15)
//                                                       .font(.system(size: 22,weight: .semibold , design: .rounded))
//                                                       .foregroundStyle(Color.white)
//                                                   Spacer()
//                                               }
//                                           }
//                                           if statusBotao == false {
//                                               VStack {
//                                                  
//                                                   HStack {
//                                                       Spacer()
//                                                       Image("Selo")
//                                                   }
//                                                   .padding(.trailing, 15)
//                                                   Spacer()
//                                               }
//                                               .padding(.top, 10)
//                                               
//                                           }
//                                       }
//                                       .frame(width: 379)
//                                       .frame(height: 250)
////                    AsyncImage(url: URL(string: saoJoaoCaruaruImages[0])) { image in
////                        image
////                            .resizable()
////                            .scaledToFill()
////                            .frame(width: 180, height: 150)
////                    } placeholder: {
////                        ProgressView()
////                    }
////                    Image(saoJoaoCaruaruImages[0])
//                })
//                NavigationLink(destination: {TelaLugares(title: feiraTitle, location: feiraLocation, description: feiraDescription, navTitle: feiraNavTitle, images: feiraImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    ZStack {
//                        AsyncImage(url: URL(string: feiraImages[0])) { image in
//                                               image
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: 379)
//                                .frame(height: 165)                       .clipped()
//                                               
//                                           } placeholder: {
//                                               ProgressView()
//                                              
//                                           }
//                                           Rectangle()
//                                               .fill(LinearGradient(
//                                                gradient: Gradient(colors: [Color.black, Color.clear]),
//                                                startPoint: .bottom,
//                                                endPoint: .top)
//                                               )
//                                           VStack {
//                                               Spacer()
//                                               HStack {
//                                                   Text(feiraTitle)
//                   //
//                                                       .padding(.leading, 15)
//                                                       .padding(.bottom, 15)
//                                                       .font(.system(size: 22,weight: .semibold , design: .rounded))
//                                                       .foregroundStyle(Color.white)
//                                                   Spacer()
//                                               }
//                                           }
//                                           if statusBotao == false {
//                                               VStack {
//                                                  
//                                                   HStack {
//                                                       Spacer()
//                                                       Image("Selo")
//                                                   }
//                                                   .padding(.trailing, 15)
//                                                   Spacer()
//                                               }
//                                               .padding(.top, 10)
//                                               
//                                           }
//                                       }
//                                       .frame(width: 379)
//                                       .frame(height: 165)
//                })
//                
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: joaoLyraTitle, location: joaoLyraLocation, description: joaoLyraDescription, navTitle: joaoLyraNavTitle, images: joaoLyraImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        ZStack {
//                            AsyncImage(url: URL(string: joaoLyraImages[0])) { image in
//                                                   image
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: 379)
//                                    .frame(height: 165)                       .clipped()
//                                                   
//                                               } placeholder: {
//                                                   ProgressView()
//                                                  
//                                               }
//                                               Rectangle()
//                                                   .fill(LinearGradient(
//                                                    gradient: Gradient(colors: [Color.black, Color.clear]),
//                                                    startPoint: .bottom,
//                                                    endPoint: .top)
//                                                   )
//                                               VStack {
//                                                   Spacer()
//                                                   HStack {
//                                                       Text(joaoLyraTitle)
//                       //
//                                                           .padding(.leading, 15)
//                                                           .padding(.bottom, 15)
//                                                           .font(.system(size: 22,weight: .semibold , design: .rounded))
//                                                           .foregroundStyle(Color.white)
//                                                       Spacer()
//                                                   }
//                                               }
//                                               if statusBotao == false {
//                                                   VStack {
//                                                      
//                                                       HStack {
//                                                           Spacer()
//                                                           Image("Selo")
//                                                       }
//                                                       .padding(.trailing, 15)
//                                                       Spacer()
//                                                   }
//                                                   .padding(.top, 10)
//                                                   
//                                               }
//                                           }
//                        .frame(width: 379)
//                                           .frame(height: 180)                  })
//                    
//                    NavigationLink(destination: {TelaLugares(title: salaRebocoTitle, location: salaRebocoLocation, description: salaRebocoDescription, navTitle: salaRebocoNaviTitle, images: salaRebocoImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBB")
//                    })
//                }
//                NavigationLink(destination: {TelaLugares(title: museuBarroTitle, location: museuBarroLocation, description: museuBarroDescription, navTitle: museuBarroNavTitle, images: museuBarroImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("BB")
//                })
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: difusoraTitle, location: difusoraLocation, description: difusoraDescription, navTitle: difusoraNavTitle, images: difusoraImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBB")
//                    })
//                    NavigationLink(destination: {TelaLugares(title: cinemaCaruaruTitle, location: cinemaCaruaruLocation, description: cinemaCaruaruDescription, navTitle: cinemaCaruaruNavTitle, images: cinemaCaruaruImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBBB")
//                    })
//                }
//                NavigationLink(destination: {TelaLugares(title: patioLuizGonzagaTitle, location: patioLuizGonzagaLocation, description: patioLuizGonzagaDescription, navTitle: patioLuizGonzagaNavTitle, images: patioLuizGonzagaImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: olegarioFernandesTitle, location: olegarioFernandesLocation, description: olegarioFernandesDescription, navTitle: olegarioFernandesNavTitle, images: olegarioFernandesImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("CARMuseuCordelOlegario")
//                    })
//                    NavigationLink(destination: {TelaLugares(title: alvaroLinsTitle, location: alvaroLinsLocation, description: alvaroLinsDescription, navTitle: alvaroLinsNavTitle, images: alvaroLinsImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BB")
//                    })
//                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Caruaru")
            
            .toolbar {
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaCaruaru()
}
