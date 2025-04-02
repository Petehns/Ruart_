//
//  CityView.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 02/04/25.
//

import SwiftUI

struct CityView: View {
    let carouselCityNames: [String] = ["Recife", "Olinda", "Caruaru"]
    let carouselCityDescriptions: [String] = ["A capital de Pernambuco, com uma rica história e cultura.", "Uma cidade conhecida por sua arquitetura e cultura vibrante.", "Uma cidade com uma grande história e cultura, famosa por sua gastronomia e patrimônio histórico."]
    let carrosselAnimadoCidade: [String] = [
        "https://www2.recife.pe.gov.br/sites/default/files/styles/imagem_slide_home/public/sol.jpg?itok=idpCkSTN",
        "https://tripsdapam.com/wp-content/uploads/2021/09/irwee9267.jpg?w=810",
        "https://www.sindloja.com.br/webfiles/imagesno/1027x535preenchimento100-20170605_593564c79a902.jpg"
    ]
   
    let cityDestination: [AnyView] = [AnyView(TelaRecife()), AnyView(TelaOlinda()), AnyView(TelaCaruaru())]
    @State private var selection = 0
    var timer = Timer.publish(every: 9, on: .main, in: .common).autoconnect()
    @State private var searchText = ""
    var filteredPlaces: [PlaceModel] {
           if searchText.isEmpty {
               return []
           } else {
               return allPlaces.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
           }
       }
    
    var body: some View {
        VStack {
            
            TabView(selection : $selection){
                ForEach(0..<carrosselAnimadoCidade.count, id: \.self){ index in
                    NavigationLink(destination: cityDestination[index], label:{
                        ZStack{
                            VStack(spacing: -65){
                                AsyncImage(url: URL(string: carrosselAnimadoCidade[index])) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width * 0.96, height: UIScreen.main.bounds.height * 0.27)
                                } placeholder: {
                                    ProgressView()
                                }
                                .cornerRadius(10.0)
                                .clipped()
                               
                                .frame(width: UIScreen.main.bounds.width * 0.96, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(10.0)
                            .clipped()
                            .offset(x: 0, y: -UIScreen.main.bounds.height * 0.06)
                                
                                VStack(alignment: .leading, spacing: -10){
                                    Text(carouselCityNames[index])
                                        .padding(.bottom, 10)
                                        .font(.title3)
                                        .bold()
                                        .foregroundStyle(Color.pretobranco)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text(carouselCityDescriptions[index])
                                       
                                        
//                                                            .font(.system(size: 14,weight: .regular , design: .rounded))
                                    .font(.subheadline)
                                        .foregroundStyle(Color.pretobranco)
                                        .multilineTextAlignment(.leading)
                                        .frame(minWidth: UIScreen.main.bounds.width * 0.90, minHeight: UIScreen.main.bounds.height * 0.08, alignment: .leading)
                                    
                                    
                                }
                            }
                    }
                }
                )
                }
            }
            .background(Color.fundocarrossel)
            .frame(width: UIScreen.main.bounds.width * 0.96, height: UIScreen.main.bounds.height * 0.36)
            .cornerRadius(15)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .onReceive(timer, perform: { _ in
                withAnimation{
                    if selection == carrosselAnimadoCidade.count {
                        selection = 0
                    }else {
                        selection = selection+1
                    }
                }
            })
//            CarousselView(caroussel: recife, place: $allPlaces)
//            CarousselView(caroussel: olinda, place: PlaceModel)
//            CarousselView(caroussel: caruaru)
            
        }
    }
}
