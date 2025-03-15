//
//  Category.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 21/06/24.
//

import Foundation
import UIKit
import SwiftUI


struct Category<Destination: View>{
    
    var name: String
      var images: [String]
      var titles: [String]
      var destinationA: Destination
      var destinationB: [AnyView]
    var latitudeCarroussel: [Double]
    var longitudeCarroussel: [Double]
    var category: [String]
    var categoryB: [String]
    
}

//enum AllScreens: CaseIterable, Identifiable {
//    case telaCinema, telaArtesVisuais
//    
//    var id: Self {self }
//    
////    var dict: [Int:  View] = [1:TelaCinema()] [index associado a tela] // nao temos certeza que index é do tipo INt!!!!
//    
//    @ViewBuilder var destinationB: some View {
//        switch self {
//        case .telaCinema: // é o index da imagem 1
//            TelaCinema()
//        case .telaArtesVisuais: // index da imagem 2
//            TelaArtesVisuais()
//        }
//    }
//}
