//
//  Cultura:Local.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 20/06/24.
//

import Foundation
enum ContentViewType: String, CaseIterable, Identifiable {
    case arte
    case cidade
    
    
    var id: String { self.rawValue }
    
}
