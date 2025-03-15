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
    let carrosselAnimadoArte: [String] = [
        "https://gncnews.com.br/img/crop?img=14324232d6d6be5a389cc733ee331a1f.png&w=800&h=400&fit=crop&fm=jpq&q=90",
        "https://upload.wikimedia.org/wikipedia/commons/0/0d/Instituto_Ricardo_Brennand.jpg",
        "https://radioculturadonordeste.com.br/wp-content/uploads/2023/10/WhatsApp-Image-2023-10-30-at-12.25.20.jpeg",
        "https://s2-g1.glbimg.com/F3pDXYfMYZOQkp4odgHBu_lR6uo=/0x0:2048x1365/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/i/u/RuvrLDThOh5olM2Mbhaw/frevo.jpg",
        "https://idg.org.br/sites/default/files/styles/1200x575px/public/field/image/2.png?itok=mhTj7_2i",
        "https://visit.recife.br/wp-content/uploads/2017/10/marco-zero-fotos-secundarias.png"
    ]
    let carouselOneNames: [String] = ["Academia de Letras", "Ricardo Brennand","Feira de Caruaru", "Paço do Frevo", "T. Santa Isabel", "Marco Zero"]
    let carouselCityNames: [String] = ["Recife", "Olinda", "Caruaru"]
    let carrosselAnimadoCidade: [String] = [
        "https://www2.recife.pe.gov.br/sites/default/files/styles/imagem_slide_home/public/sol.jpg?itok=idpCkSTN",
        "https://tripsdapam.com/wp-content/uploads/2021/09/irwee9267.jpg?w=810",
        "https://www.sindloja.com.br/webfiles/imagesno/1027x535preenchimento100-20170605_593564c79a902.jpg"
    ]
    let carouselOneDescription: [String] = ["Promove e preserva a literatura de Pernambuco, com uma biblioteca rica em obras regionais e organização de eventos culturais.", "Com arquitetura medieval, oferece exposições permanentes e temporárias, além de eventos e programas educacionais.","Originada no século XVIII, oferece uma grande variedade de produtos, como roupas, alimentos e utensílios.", "É um museu dedicado ao frevo, com exposições interativas e apresentações de música e dança, celebrando a herança cultural pernambucana.", "Oferece uma rica programação de teatro, óperas e concertos.", "É o ponto de origem da cidade, onde se concentram importantes marcos históricos e culturais."]
    let carouselCityDescriptions: [String] = ["A capital de Pernambuco, com uma rica história e cultura.", "Uma cidade conhecida por sua arquitetura e cultura vibrante.", "Uma cidade com uma grande história e cultura, famosa por sua gastronomia e patrimônio histórico."]
    let artDestination: [AnyView] = [AnyView(TelaLugares(place: allPlaces[21], viewModel: PlaceViewModel(places: allPlaces))), AnyView(TelaLugares(place: allPlaces[0], viewModel: PlaceViewModel(places: allPlaces))), AnyView(TelaLugares(place: allPlaces[3], viewModel: PlaceViewModel(places: allPlaces))), AnyView(TelaLugares(place: allPlaces[14], viewModel: PlaceViewModel(places: allPlaces))), AnyView(TelaLugares(place: allPlaces[7], viewModel: PlaceViewModel(places: allPlaces))), AnyView(TelaLugares(place: allPlaces[12], viewModel: PlaceViewModel(places: allPlaces)))]
    let cityDestination: [AnyView] = [AnyView(TelaRecife()), AnyView(TelaOlinda()), AnyView(TelaCaruaru())]
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
                        VStack {
                          
                                TabView(selection : $selection){
                                    ForEach(0..<carrosselAnimadoArte.count, id: \.self){ index in
                                        NavigationLink(destination: artDestination[index], label:{
                                        ZStack{
                                            VStack(spacing: -65) {
                                                AsyncImage(url: URL(string: carrosselAnimadoArte[index])) { image in
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
                                                        Text(carouselOneNames[index])
                                                          
                                                            .padding(.bottom, 10)
                                                            .font(.title3)
                                                            .bold()
                                                            .foregroundStyle(Color.pretobranco)
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Text(carouselOneDescription[index])
                                                           
                                                            
//                                                            .font(.system(size: 14,weight: .regular , design: .rounded))
                                                        .font(.subheadline)
                                                            .foregroundStyle(Color.pretobranco)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(minWidth: UIScreen.main.bounds.width * 0.90, minHeight: UIScreen.main.bounds.height * 0.08, alignment: .leading)
                                                    }
                                                .frame(maxWidth: UIScreen.main.bounds.width * 0.92, maxHeight: UIScreen.main.bounds.height * 0.13, alignment: .leading)
                                                .padding(.leading)
                                                .padding(.top, UIScreen.main.bounds.height * 0.04)
                                               
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
                                        if selection == carrosselAnimadoArte.count {
                                            selection = 0
                                        }else {
                                            selection = selection+1
                                        }
                                    }
                                    
                                })
                            
                                                 
                         
                            CarousselView(caroussel: visualArt)
                            CarousselView(caroussel: performingArts)
                            CarousselView(caroussel: cinema)
                            CarousselView(caroussel: music)
                            CarousselView(caroussel: literature)
                        }
                    case .cidade:
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
                            CarousselView(caroussel: recife)
                            CarousselView(caroussel: olinda)
                            CarousselView(caroussel: caruaru)
                            
                        }
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
