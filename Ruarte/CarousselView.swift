//
//  CarousselView.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 21/06/24.
//

import SwiftUI

struct CarousselView<Destination: View>: View  {
    
    var caroussel: Category<Destination>
//    @State var places: [PlaceModel] = allPlaces
    @AppStorage("statusBotao") var statusBotao: Bool = true
    @AppStorage("statusCurtir") var isHeartFilled = false
//    let allPlaces: [PlaceModel]
    var body: some View {
        NavigationStack{
            HStack{
                Text(caroussel.name)
                    .bold()
                Spacer()
                NavigationLink(destination: caroussel.destinationA, label: {
                    HStack {
                        Text("Ver tudo")
                            .foregroundStyle(.pretobranco)
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.pretobranco)
                            
                    }
                    
                })
            }
            .padding(10)
            ScrollView(.horizontal, showsIndicators: false,
                       content: {
                
                HStack(spacing: 12) {
                    ForEach(0..<caroussel.images.count, id: \.self) { index in
                        VStack {
                            NavigationLink(
                                destination: AnyView(caroussel.destinationB[index]),
                                label: {
                                    VStack {
                                        ZStack {
                                            AsyncImage(url: URL(string: caroussel.images[index])) { image in
                                                image
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.18)
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .cornerRadius(10.0)
                                            .clipped()
                                            HStack{
                                                Spacer()
                                                VStack{
                                                    if statusBotao == false{
                                                        Image("Selo")
                                                        Spacer()
                                                    }
                                                }
                                            }
                                            .padding(.top, 2)
                                        }

                                        Spacer()
                                        VStack(alignment: .leading, spacing: 2) {
                                            HStack {
                                                Text("\(caroussel.titles[index])")
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.leading, 8)
//                                                    .padding(.leading, 10)
//                                                    .padding(.bottom, 10)
                                                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                                                    .foregroundStyle(Color.pretobranco)
                                                Spacer()
                                            }
                                            
                                            HStack {
                                               
                                                Button(action:{
                                                    isHeartFilled.toggle()
                                                }, label: {
                                                    if isHeartFilled == false{
                                                        Image(systemName: "star")
                                                            .foregroundStyle(Color.pretobranco)
                                                    }else{
                                                        Image(systemName: "star.fill")
                                                            .foregroundStyle(Color.amarelin)
                                                    }
                                                })
                                                .padding(.bottom, 1)
                                                HStack {
                                                    Button(action: {
                                                        if let url = URL(string: "maps://?q=\(caroussel.latitudeCarroussel[index]),\(caroussel.longitudeCarroussel[index])") {
                                                            UIApplication.shared.open(url)
                                                        }
                                                    }) {
                                                        HStack {
                                                            Image(systemName: "location.circle.fill")
                                                                .foregroundStyle(Color.pretobranco)
                                                            Text("Ir!")
                                                                .foregroundStyle(Color.pretobranco)
                                                        }
                                                    }
                                                }

                                                
                                            }
                                            .padding(.bottom, 10)
                                            .padding(.leading, 8)
                                        }
                                        
                                    }
                                    .background(Color.fundocarrossel)
                                    .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.25)
                                    .cornerRadius(15)
                                }
                            )
                            
                        }
                    }
                }
                .padding(10)

                
                
                
                
            })
        }
        .padding(.vertical, 10)
    }
    
}

#Preview {
    CarousselView(caroussel: Category(name:"Artes Visuais", images: [
        "https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand13.jpg",
        "CAMuseudoEstadodePernambuco",
        "CAMuseudeArteContemporaneadePernambuco",
        "CAFeiradeCaruaru"
    ], titles: ["Ricardo Brennand", "", "", "", ""], destinationA: TelaArtesVisuais(),
       destinationB: [
        AnyView(EmptyView()),  AnyView(EmptyView()),  AnyView(EmptyView()),  AnyView(EmptyView()),  AnyView(EmptyView())
       ], latitudeCarroussel: [0.0, 0.0, 0.0, 0.0, 0.0], longitudeCarroussel: [0.0, 0.0, 0.0, 0.0, 0.0], category: [""], categoryB: [""]
                                     )
                )
}
