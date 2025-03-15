//
//  perfil-apreciador.swift
//  Ruarte
//
//  Created by Luiz Eduardo Silva Ferreira on 20/06/24.
//

import SwiftUI

//class SelosCounter {
//    @AppStorage("selos") var counter: Int = 0
//    
//}

var selos = SelosCounter()

struct perfil_apreciador: View {
    
    
    
    //    @State private var selos: Int = 0
    
    
    @State var nivel: Int = 0
    
    @State var progresso: Int = 0
    
    @State var falta: Int = 0
    
    @State var congratulationsIsShow = false
    
    @State private var barra: [String] = ["progressbar0","progressbar1","progressbar2","progressbar3","progressbar4","progressbar5","progressbar6"]
    
    @State private var capa: [String] = ["Capa-Apreciador","Capa-Explorador","Capa-Cacador","Capa-Lendario"]
    
    @State private var icone: [String] = ["Apreciador","Explorador-Novato","Cacador-Cultura","Lendario-da-Arte"]
    
    @State private var niveis: [String] = ["niveis1","niveis2","niveis3","niveis4"]
    
    @State private var nomeNivel: [String] = ["Apreciador","Explorador Novato","Caçador Cultural","Lendário das Artes"]
    
    @State private var descrição: [String] = ["Você está iniciando no mundo artístico-cultural, visita exposições e eventos ocasionalmente.","Você está empolgade para conhecer mais. Explorar museus, galerias e teatros regularmente.","Você é um entusiasta ávido, busca novos eventos e exposições, com visitas frequentes e planejadas.","Você é autoridade nas artes, visitou muitos locais e eventos, reconhecido por seu conhecimento e paixão."]
    
    @State private var panorama: [String] = ["niveis1","niveis2","niveis3","niveis4"]
    
    @State private var showAlert = false
    @State private var searchText = ""
    @State private var searchIsActive = false
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                        VStack {
                            ZStack {
                                Image(capa[nivel])
                                    .frame(height: 192,alignment: .bottom)
                                   
                                
                                Image(icone[nivel])
                                    .frame(height: 300,alignment: .bottom)
                            }
                            .frame(height: 192)
                            Text(nomeNivel[nivel])
                                .font(.system(size: 24,weight: .bold ,design: .rounded))
                                .frame(height: 80)
                                .padding()
                            
                            Image(barra[progresso])
                            
                            Text("\(progresso)/6 selos")
                                .font(.system(size: 16,weight: .semibold ,design: .rounded))
                                .frame(width: 266, height: 35, alignment: .trailing)
                                .padding(.bottom)
                            
                            Text(descrição[nivel])
                                .font(.system(size: 17,weight: .regular ,design: .rounded))
                                .frame(width:360,height: 90)
                                .padding(.bottom)
                            
                            Image(panorama[nivel])
                                .padding(.bottom)
                            
                            HStack {
                                Text("\(falta) selo(s) para completar o nível")
                                    .font(.system(size: 15,weight: .regular ,design: .rounded))
                                Text(nomeNivel[nivel])
                                    .font(.system(size: 15,weight: .bold ,design: .rounded))
                                
                            }
                        }
                        .ignoresSafeArea()
                  
                        .onAppear{
                            mudar()
                        }
                    
                    
                }
            }
        }
        .fullScreenCover(isPresented: $congratulationsIsShow, content: {
            
            if nivel == 1{
                TelaParabensExplorador(isShown: $congratulationsIsShow)
            } else if nivel == 2{
                TelaParabensCacador(isShown: $congratulationsIsShow)
            } else{
                TelaParabensLendario(isShown: $congratulationsIsShow)
            }
        })
    }
    func mudar() {
        
        nivel = selos.counter / 6
        
        progresso = selos.counter % 6
        
        falta = 6 - selos.counter % 6
        
        if progresso == 0 && nivel > 0 {
            congratulationsIsShow = true
        }
        
        
        
    }
}

#Preview {
    perfil_apreciador()
}
