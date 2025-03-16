//
//  mepe.swift
//  Ruarte
//
//  Created by Luiz Eduardo Silva Ferreira on 20/06/24.
//

import SwiftUI

class PlaceViewModel: ObservableObject {
    @Published var places: [PlaceModel]
    @Published var selosCounter: Int = 0
    
    init(places: [PlaceModel]) {
        self.places = places
    }
    
    func toggleBeenVisited(for place: PlaceModel) {
        if let index = places.firstIndex(where: { $0.id == place.id }) {
            places[index].beenVisited.toggle() // Alterna o estado de "Já Fui"
            // Atualiza o contador de selos
            if places[index].beenVisited {
                selosCounter += 1
            } else {
                selosCounter -= 1
            }
        }
    }
    func toggleIsFavorite(for place: PlaceModel){
        if let index = places.firstIndex(where: { $0.id == place.id }) {
            places[index].isFavorite.toggle()
        }
    }
}
var somaSelo: Int = 0

struct TelaLugares: View {
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    @EnvironmentObject var markedItems: MarkedItems
    @State var nivel: Int = 0
    @State var buttonState = [true]
    //    @AppStorage("statusBotao") var statusBotao: Bool = true
    //    @AppStorage("statusCurtir") var isHeartFilled = false
    @State var teste: Int = 0
    @State private var items = Array(1...100)
    @State private var scale: CGFloat = 0.0
    @State var place: PlaceModel
    @ObservedObject var viewModel: PlaceViewModel
    var body: some View {
        NavigationStack {
            
            ScrollViewReader { proxy in
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(place.title)
                                    .multilineTextAlignment(.leading)
                                    .font(.title)
                                    .bold()
//                                    .frame(maxWidth: UIScreen.main.bounds.width * 0.76, maxHeight: UIScreen.main.bounds.height * 0.095)
//                                    .padding(.trailing, 50)
                                   
                                Spacer()
                                
                                if place.beenVisited {
                                    
                                    Image("Selo")
                                        .padding()
                                        .scaleEffect(scale)
                                        .onAppear {
                                            withAnimation(.interpolatingSpring(stiffness: 100, damping: 5)) {
                                                scale = 3
                                            }
                                            withAnimation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.1)) {
                                                scale = 1.5
                                            }
                                        }
                                }
                                    
                            }
                            HStack {
                                Button(action: {
                                    if let url = URL(string: "maps://?q=\(place.latitude),\(place.longitude)") {
                                        UIApplication.shared.open(url)
                                    }
                                }) {
                                    HStack {
                                        Image(systemName: "location.fill")
                                            .foregroundStyle(Color.pretobranco)
                                        Text(place.location)
                                            .multilineTextAlignment(.leading)
                                            .foregroundStyle(Color.pretobranco)
                                    }
                                }
                            }

                        }
                        .frame(width: UIScreen.main.bounds.width * 0.96,alignment: .leading)
                        .onChange(of: place.beenVisited) { oldValue, newValue in
                            print("Old: \(oldValue), New: \(newValue)")
                        }
                        .onChange(of: place.isFavorite) { oldValue, newValue in
                            print("Old: \(oldValue), New: \(newValue)")
                        }
                        VStack {
                            AsyncImage(url: URL(string: place.images[0])) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width * 0.99, height: UIScreen.main.bounds.height * 0.31)
                                  
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                            
                            HStack(spacing: 4) {
                                AsyncImage(url: URL(string: place.images[1])) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width * 0.49, height: UIScreen.main.bounds.height * 0.16)
                                        
                                        .clipped()
                                } placeholder: {
                                    ProgressView()
                                }
                                .padding(.leading, 10)
                                //                            Spacer()
                                AsyncImage(url: URL(string: place.images[2])) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width * 0.49, height: UIScreen.main.bounds.height * 0.16)
                                        .clipped()
                                    
                                } placeholder: {
                                    ProgressView()
                                }
                                .padding(.trailing, 10)
                                
                            }
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.15)
                           
                            
                        }
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.52)
                        .frame(width: 397, height: 440)
                        .padding(1)
                        HStack{
                            ZStack{
                                Text(place.category)
                                    .opacity(0.8)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 6)
                            }
                            .background(Color.fundocarrossel)
                            .cornerRadius(20)
                            ZStack{
                                Text(place.category2)
                                    .opacity(0.8)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 6)
                            }
                            .background(Color.fundocarrossel)
                            .cornerRadius(20)
                            Spacer()
                            
                        }
                        .padding(.horizontal, 10)
                        Spacer()
                        VStack {
                            Text("Descrição:")
                                .font(.system(size: 20,weight: .semibold ,design: .rounded))
                            
                                .frame(width: UIScreen.main.bounds.width * 0.92, alignment: .leading)
                            Spacer()
                            Text(place.description)
                                .font(.system(size: 17,weight: .regular ,design: .rounded))
                                .frame(width: UIScreen.main.bounds.width * 0.92, alignment: .leading)
                        }
                        Button(action: {
                            viewModel.toggleBeenVisited(for: place)
//                            place.beenVisited.toggle()
//                            if place.beenVisited {
//                                selos.counter = selos.counter + 1
//                            } else {
//                                selos.counter = selos.counter - 1
//                            }
                            
//                            withAnimation {
//                                // Scroll to the item with id 0 (top of the list)
//                                proxy.scrollTo(0, anchor: .top)
//                            }
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(maxWidth: UIScreen.main.bounds.width * 0.76)
                                    .frame (height: UIScreen.main.bounds.height * 0.07)
                                    .foregroundStyle(place.beenVisited ? .gray : .orangeRuart)
                                    .cornerRadius(10)
                                //                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text("Já Fui")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        })
                        .padding()
                    }
                    .padding(.top)
                    .id(0)
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.blueRuart, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationTitle(place.navTitle)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button(action: {
                            viewModel.toggleIsFavorite(for: place)
//                            place.isFavorite.toggle()
//                            let item = MarkedItem(name: "", imageName: "marMuseudoEstadodePernambuco")
//                            if place.isFavorite {
//                                markedItems.addItem(item)
//                            } else {markedItems.removeItem(item)
//                                
//                            }
                        }) {
                            Image(systemName: place.isFavorite ? "star.fill" : "star")
                            .foregroundStyle(Color.white)                        }
                    }
                }
                .toolbarColorScheme(.dark, for: .navigationBar)
            }
        }
        .onChange(of: allPlaces[0].isFavorite) { old, new in
            print("old: \(old), new: \(new)")
        }
    }
}
#Preview {
    let place = PlaceModel(title: "Place Name", description: "Location Street - Recife", navTitle: "This place is awesome", location: "Place", images: ["https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand13.jpg","https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand12.jpg", "https://catracalivre.com.br/cdn-cgi/image/f=auto,q=60,width=960,height=99999,fit=scale-down/wp-content/uploads/2019/10/instituto-ricardo-brennand2.jpg"], beenVisited: false, isFavorite: false, category: "Artes VIsuais", category2: "Recife", longitude: -3.12452, latitude: -3.6)
    
//    TelaLugares(place: $place)
//        .environmentObject(MarkedItems())
}
