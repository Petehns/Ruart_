//
//  TelaRecife.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 23/06/24.
//

import SwiftUI

struct TelaRecife: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    var body: some View {
        NavigationStack {
            ScrollView{
//                NavigationLink(destination: {TelaLugares(title: fundajTitle, location: fundajLocation, description: fundajDescription, navTitle: fundajNavTitle, images: fundajDerbyImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
//                NavigationLink(destination: {TelaLugares(title: brennandTitle, location: brennandLocation, description: brennandDescription, navTitle: brennandNavTitle, images: brennandImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
//                NavigationLink(destination: {TelaLugares(title: academiaLetrasTitle, location: academiaLetrasLocation, description: academiaLetrasDescription, navTitle: academiaLetrasNavTitle, images: academiaLetrasImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("BB")
//                })
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: mepeTitle, location: mepeLocation, description: mepeDescription, navTitle: mepeNavTitle, images: mepeImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBB")
//                    })
//                    NavigationLink(destination: {TelaLugares(title: fundajMuseuTitle, location: fundajMuseuLocation, description: fundajMuseuDescription, navTitle: fundajMuseuNavTitle, images: fundajMuseuImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBBB")
//                    })
//                }
//                NavigationLink(destination: {TelaLugares(title: santaIsabelTitle, location: santaIsabelLocation, description: santaIsabelDescription, navTitle: santaIsabelNavTitle, images: santaIsabelImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("BB")
//                })
//                
//                NavigationLink(destination: {TelaLugares(title: pacoFrevoTitle, location: pacoFrevoLocation, description: pacoFrevoDescription, navTitle: pacoFrevoNavTitle, images: pacoFrevoImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("B")
//                })
//                HStack{
//                    NavigationLink(destination: {TelaLugares(title: apoloTitle, location: apoloLocation, description: apoloDescription, navTitle: apoloNavTitle, images: apoloImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBB")
//                    })
//                    NavigationLink(destination: {TelaLugares(title: teatroParqueTitle, location: teatroParqueLocation, description: teatroParqueDescription, navTitle: teatroParqueNavTitle, images: teatroParqueImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                        
//                        Image("BBBB")
//                    })
//                }
//                NavigationLink(destination: {TelaLugares(title: fundajDerbyTitle, location: fundajDerbyLocation, description: fundajDerbyDescription, navTitle: fundajDerbyNavTitle, images: fundajDerbyImages, latitude: 0.0, longitude: 0.0, category: "", categoryB: "")}, label: {
//                    
//                    Image("BB")
//                })
//
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Recife")
            
            .toolbar {
             
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

#Preview {
    TelaRecife()
}
