//
//  RuarteApp.swift
//  Ruarte
//
//  Created by Ana Elizabeth Bastos de Mendonça on 18/06/24.
//

import SwiftUI

@main
struct RuarteApp: App {
    @StateObject private var markedItems = MarkedItems()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(markedItems)
        }
        .modelContainer(for: PlaceModel.self)
    }
}
