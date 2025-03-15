//
//  StartView.swift
//  Ruarte
//
//  Created by Ana Elizabeth Bastos de Mendonça on 20/06/24.
//

import SwiftUI


struct StartView: View {
    @State private var currentColorIndex = 0
    let colors: [String] = ["azuzin", "amarelin", "vermelhin"]
    @State private var navigateToNextView = false
    @State private var isShowingStartView = true
    var body: some View {
       
            VStack {
                if isShowingStartView == true{
                    ZStack {
                        
                        Image(colors[currentColorIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .transition(.opacity)
                            .animation(.easeInOut(duration: 1), value: currentColorIndex)
                        Image("logo2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 70)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .onAppear {
                        
                        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                            withAnimation(.easeInOut(duration: 1)) {
                                
                                currentColorIndex = (currentColorIndex + 1) % colors.count
                            }
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                            isShowingStartView = false
                        }
                    }
                }else{
                    withAnimation(.easeOut(duration: 1.0)){
                        ContentView(place: allPlaces)
                    }
                }
            }
//            .navigationDestination(isPresented: $navigateToNextView) {
//                ContentView()
//                    .fullScreenCover(isPresented: $isShowingStartView) {
//                        ContentView()
//            }
        }
    }





//#Preview {
//    StartView()
//}
