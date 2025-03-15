//
//  TelaParabensLendario.swift
//  Ruarte
//
//  Created by Ana Elizabeth Bastos de Mendonça on 20/06/24.
//

import SwiftUI


struct TelaParabensLendario: View {
    @Binding var isShown: Bool
    
    var body: some View {
        
        ZStack {
            Image("Raio")
                .ignoresSafeArea()
                .offset(y: -100)
                .opacity(0.5)
            
            VStack {
                
                Spacer()
                Image("Lendario-da-Arte")
                    .offset(y:50)
                
                Text("PARABÉNS!")
                    .font(.custom("Ruina", size: 65))
                    .offset(y:50)
                
                HStack {
                    Text("Você agora é um")
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                    Text("Lendário das Artes")
                        .font(.system(size: 16, weight: .black, design: .rounded))

                }
                .offset(y:50)
                
                Text("Você é autoridade nas artes, visitou muitos locais e eventos, reconhecido por seu conhecimento e paixão.")
                    .frame(width: 300, height: 60)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .offset(y:50)
                
                Spacer()
                
                ShareLink(
                    item: Image(.lendarioExportar),
                    preview: SharePreview(
                        "Compartilhe seu progresso!",
                        image: Image(.lendarioExportar)
                    )
                )
                {
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 48)
                            .foregroundStyle(Color.blueRuart)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                            Text("Compartihar")
                        }
                        .foregroundStyle(.white)
                    }
                }
                
                
                Button(action: {
                    isShown.toggle()
                },
                       label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 48)
                            .foregroundStyle(Color.orangeRuart)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        HStack {
                            Text("Voltar")
                        }
                        .foregroundStyle(.white)
                    }
                })
                
                Spacer()
                
                
            }
        }
    }
    
    private func shareButtonTapped() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let rootViewController = windowScene.windows.first?.rootViewController else {
            return
        }
        
        guard let image = UIImage(named: "lendario.exportar") else {
            print("Imagem não encontrada!")
            return
        }
        
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        rootViewController.present(activityViewController, animated: true, completion: nil)
    }
}



#Preview {
    TelaParabensLendario(isShown: .constant(false))
}
