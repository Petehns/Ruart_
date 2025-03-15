//
//  MarkedItems.swift
//  Ruarte
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 27/06/24.
//

import Foundation
import SwiftUI
import Combine

class MarkedItems: ObservableObject {
    @Published var items: [MarkedItem] = []
    
    func addItem(_ item: MarkedItem) {
        if !items.contains(where: { $0.id == item.id }) {
            items.append(item)
        }
    }
    
    func removeItem(_ item: MarkedItem) {
        items.removeAll { $0.id == item.id }
    }
}

struct MarkedItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
}
