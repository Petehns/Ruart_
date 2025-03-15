//
//  Alert.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 26/06/24.
//

import SwiftUI


        struct Alertinha: View {
            @State private var showAlert = false
            
            var body: some View {
                VStack {
                    Text("Bem-vindo ao SwiftUI!")
                        .padding()
                    
                    Button(action: {
                        showAlert = true
                    }) {
                        Text("Mostrar Alerta")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Nível: Apreciador"),
                        message: Text("Falta 5 selos para completar Apreciador."),
                        dismissButton: .default(Text("Voltar"))
                        
                    )
                }
            }
        }
    

#Preview {
    Alertinha()
}
