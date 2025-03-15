//
//  testeperfil.swift
//  Ruarte
//
//  Created by Luiz Eduardo Silva Ferreira on 25/06/24.
//

import SwiftUI

struct testeperfil: View {
    
    @State private var selos = 6
    @State private var barra: [String] = ["progressbar0","progressbar1","progressbar2","progressbar3","progressbar4","progressbar5","progressbar6"]
    
    var body: some View {
        ZStack{
            Image(barra[selos])
        }
    }
}

#Preview {
    testeperfil()
}
