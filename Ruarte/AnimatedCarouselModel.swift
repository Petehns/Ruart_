//
//  AnimatedCarouselModel.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 14/03/25.
//

import SwiftUI

struct AnimatedCarouselModel: Identifiable {
    var id = UUID()
    let artImages: [String]
    let artNames: [String]
    let artDescriptions: [String]
    let artDestination: [AnyView]
    let cityImages: [String]
    let cityNames: [String]
    let cityDescriptions: [String]
    let cityDestination: [AnyView]
    
    init(id: UUID = UUID(), artImages: [String], artNames: [String], artDescriptions: [String], artDestination:[AnyView], cityDestination:[AnyView], cityImages: [String], cityNames: [String], cityDescriptions: [String]) {
        self.id = id
        self.artImages = artImages
        self.artNames = artNames
        self.artDescriptions = artDescriptions
        self.artDestination = artDestination
        self.cityImages = cityImages
        self.cityNames = cityNames
        self.cityDescriptions = cityDescriptions
        self.cityDestination = cityDestination
    }
    
}

let artes = [
    AnimatedCarouselModel(
        artImages: [
            "https://gncnews.com.br/img/crop?img=14324232d6d6be5a389cc733ee331a1f.png&w=800&h=400&fit=crop&fm=jpq&q=90",
            "https://upload.wikimedia.org/wikipedia/commons/0/0d/Instituto_Ricardo_Brennand.jpg",
            "https://radioculturadonordeste.com.br/wp-content/uploads/2023/10/WhatsApp-Image-2023-10-30-at-12.25.20.jpeg",
            "https://s2-g1.glbimg.com/F3pDXYfMYZOQkp4odgHBu_lR6uo=/0x0:2048x1365/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/i/u/RuvrLDThOh5olM2Mbhaw/frevo.jpg",
            "https://idg.org.br/sites/default/files/styles/1200x575px/public/field/image/2.png?itok=mhTj7_2i",
            "https://visit.recife.br/wp-content/uploads/2017/10/marco-zero-fotos-secundarias.png"
        ],
        artNames: ["Academia de Letras", "Ricardo Brennand","Feira de Caruaru", "Paço do Frevo", "T. Santa Isabel", "Marco Zero"],
        artDescriptions: ["Academia de Letras é massa", "Ricardo Brennand é txop","Feira de Caruaru, nunca fui", "Paço do Frevo, paranranranran", "T. Santa Isabel é bunitu", "Marco Zero é o melhor lugar"],
        artDestination: [AnyView(TelaLugares(place: allPlaces[0], viewModel: PlaceViewModel(places: allPlaces)))],
        cityDestination: [AnyView(TelaLugares(place: allPlaces[0], viewModel: PlaceViewModel(places: allPlaces)))], cityImages: [
            "https://www2.recife.pe.gov.br/sites/default/files/styles/imagem_slide_home/public/sol.jpg?itok=idpCkSTN",
            "https://tripsdapam.com/wp-content/uploads/2021/09/irwee9267.jpg?w=810",
            "https://www.sindloja.com.br/webfiles/imagesno/1027x535preenchimento100-20170605_593564c79a902.jpg"
        ],
        cityNames: ["Recife", "Olinda", "Caruaru"],
        cityDescriptions: [""]
    )
]
