//
//  Favorites.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 28/09/24.
//

import SwiftUI

struct Marcados: View {
    @State var allPlaces: [PlaceModel]

    var body: some View {
        NavigationStack {
            List {
                ForEach(allPlaces.filter { $0.isFavorite }) { place in
                    VStack(alignment: .leading) {
                        Image(place.images[0])
                        Text(place.title)
                            .font(.headline)
                        Text(place.location)
                            .font(.subheadline)
                    }
                }

            }
       
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationTitle("Marcados")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
 
}

//#Preview {
//    Marcados()
//}
