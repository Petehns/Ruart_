//
//  TelaOlinda.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaOlinda: View {
   @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationStack {
            ScrollView{
//                NavigationLink(destination: {TelaLugares(title: bienalPernambucoTitle, location: bienalPernambucoLocation, description: bienalPernambucoDescription, navTitle: bienalPernambucoNavTitle, images: bienalPernambucoImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
//                NavigationLink(destination: {TelaLugares(title: bibliotecaOlindaTitle, location: bibliotecaOlindaLocation, description: bibliotecaOlindadDescription, navTitle: bibliotecaOlindaNavTitle, images: bibliotecaOlindaImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("BB")
//                })
//                
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: macTitle, location: macLocation, description: macDescription, navTitle: macNavTitle, images: macImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBB")
//                    })
//                    NavigationLink(destination: {TelaLugares(title: mamulengoTitle, location: mamulengoLocation, description: mamulengoDescription, navTitle: mamulengoNavTitle, images: mamulengoImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBBB")
//                    })
//                }
//                
//                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Olinda")
            
            .toolbar {
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaOlinda()
}
