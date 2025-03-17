//
//  ContentView.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerraa on 18/06/24.
//

import SwiftUI
class SelosCounter: ObservableObject {
    @AppStorage("selos") var counter: Int = 0
}
struct ContentView: View {
    @StateObject var selos = SelosCounter()
    @State private var currentIndex = 0
        let images = ["Welcome1", "Welcome2", "Welcome3"]
    var place: [PlaceModel]
    var body: some View {
        if selos.counter == 0 {
            TabView(selection: $currentIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    ZStack {
                        Image(images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .ignoresSafeArea()
                        if index == 2 {
                            VStack {
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        selos.counter += 1
                                    }) {
                                        Text("Começar")
                                            .bold()
                                            .padding()
                                            .background(Color.amarelin)
                                            .foregroundColor(.white)
                                            .cornerRadius(200)
                                    }
                                    .padding(.bottom, 20)
                                }
                            }
                            .padding(.vertical, 39)
                            .padding(.horizontal, 25)
                        }else{
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        
                                        currentIndex = (currentIndex + 1) % images.count
                                    }) {
                                        ZStack {
                                            Circle()
                                                .frame(width: 60, height: 60)
                                                .foregroundStyle(Color.azuzin)
                                            Image(systemName: "chevron.right")
                                          
                                                .foregroundColor(.white)
                                                .cornerRadius(400)
                                        }
                                    }
                                }
                            }
                            .padding(.vertical, 55)
                            .padding(.horizontal, 30)

                        }
                    }
                    .tag(index) // Associa o índice ao item
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
                } else {
                    
                    TabBar()
                }
      
            
        
            
    }
       
    
}
struct NavigationBar: View {
    
    //    var perfilIcon: String
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
   
 
    var body: some View {
        NavigationStack {
                   VStack {
                       ZStack {
                           NavigationLink(destination: DetailView()) {
                           }
                       }
                       Spacer()
                   }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action:{ showAlert = true}, label: {
                        
                        Image("perfil-ativo1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    })
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Nível: Apreciador"),
                            message: Text("Falta 5 selos para completar Apreciador."),
                            dismissButton: .default(Text("Voltar"))
                            
                        )
                    }
                    .toolbarColorScheme(.dark, for: .navigationBar)
                }
                
                ToolbarItem(placement: .principal) {
                    Image("Logo")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        searchIsActive.toggle()
                        
                    },
                           label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color(.white))
                        
                    })
                }
            }
        }
         
        .searchable(text: $searchText, isPresented: $searchIsActive)
    }
}

struct TabBar: View {
    var body: some View {
        ZStack {
            TabView {
                CarrosselArtesVisuais()
                    .tabItem {
                        Label("Início", systemImage: "house")
                    }
                    .toolbarBackground(Color.blueRuart, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                
//                SearchableMap()
//                    .tabItem {
//                        Label("Mapa", systemImage: "map.fill")
//                    }
//                    .toolbarBackground(Color.blueRuart, for: .tabBar)
//                    .toolbarBackground(.visible, for: .tabBar)
                
                Marcados(allPlaces: allPlaces)
                    .tabItem {
                        Label("Marcados", systemImage: "bookmark")
                    }
                    .toolbarBackground(Color.blueRuart, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                
    //            PerfilView()
                perfil_apreciador()
                    .tabItem {
                        Label("Perfil", systemImage: "person")
                        
                    }
                    .toolbarBackground(Color.blueRuart, for: .tabBar)
                    .toolbarBackground(.visible, for: .tabBar)
                    

            }
        }
        
    }
}

struct DetailView: View {
    var body: some View {
        Text("Orders view")
            .navigationTitle("Order title")
    }
}
#Preview {
    ContentView(place: allPlaces)
        .environmentObject(MarkedItems())
}
