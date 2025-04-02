//
//  CarrosselArtesVisuais.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 19/06/24.
//

import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let cache = NSCache<NSString, UIImage>()
    
    func loadImage(from url: String) {
        let key = NSString(string: url)
        
    
        if let cachedImage = cache.object(forKey: key) {
            self.image = cachedImage
            return
        }
        
       
        guard let imageURL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, _ in
            guard let data = data, let downloadedImage = UIImage(data: data) else { return }
            
            DispatchQueue.main.async {
                self.cache.setObject(downloadedImage, forKey: key)
                self.image = downloadedImage
            }
        }.resume()
    }
}
struct CarrosselArtesVisuais: View {
    @State var isStartTimer: Bool = false
    
   
    @State private var selectedType: ContentViewType = .arte
    @State private var selection = 0
    @State private var minHeight: CGFloat = 1
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    
    var filteredPlaces: [PlaceModel] {
           if searchText.isEmpty {
               return []
           } else {
               return allPlaces.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
           }
       }

//    @State var place: PlaceModel
    var timer = Timer.publish(every: 9, on: .main, in: .common).autoconnect()
//    let animatedCarousel:  AnimatedCarouselModel
    
    var body: some View {
       
        NavigationStack {
            ScrollView(showsIndicators: false) {
//                NavigationBar()
                
                HStack() {
                    Button(action: {
                        selectedType = .arte
                    }, label: {
                        VStack{
                            Text("Arte")
                                .foregroundStyle(selectedType == .arte ? .pretobranco : .gray)
                                .bold()
                            Spacer()
                            if selectedType == .arte {
                                Rectangle()
                                    .frame(height:1.5)
                                    .frame(width: 150)
                                    .foregroundColor(.pretobranco)
                                
                            }
                        }
                        
                        
                    })
                    
                    .frame(width: 150)
                    Spacer()
                    Button(action: {
                        selectedType = .cidade
                    }, label: {
                        VStack{
                            Text("Cidade")
                                .foregroundStyle(selectedType == .cidade ? .pretobranco : .gray)
                                .bold()
                                .frame(width: 90)
                            Spacer()
                            if selectedType == .cidade {
                                Rectangle()
                                    .frame(height:1.5)
                                    .frame(width: 150)
                                    .foregroundColor(.pretobranco)
                            }
                        }
                    })
                    
                    .frame(width: 150)
                }.padding()
                
                
                VStack{
                    switch selectedType {
                    case .arte:
                      ArtView()
                        
                    case .cidade:
                    CityView()
                    }
                    
                }
                .frame(maxHeight: .infinity)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.blueRuart, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Início")
            
            
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
//                    .toolbarColorScheme(.dark, for: .navigationBar)
                }
                
                ToolbarItem(placement: .principal) {
                    Image("Logo")
                }
                
//                ToolbarItem(placement: .navigationBarTrailing) {
//
//                    Button(action: {
//                        searchIsActive.toggle()
//
//                    },
//                           label: {
//                        Image(systemName: "magnifyingglass")
//                            .foregroundStyle(Color(.white))
//
//                    })
//                }
            }
            
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    
//.searchable(text: $searchText, isPresented: $searchIsActive)

        }
}

#Preview {
    CarrosselArtesVisuais()
}
