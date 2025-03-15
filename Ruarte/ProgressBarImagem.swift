//
//  ProgressBarImagem.swift
//  Ruarte
//
//  Created by Luiz Eduardo Silva Ferreira on 25/06/24.
//

import SwiftUI


struct ProgressBarImagem: View {
        
    var selos: Int = 6
    
    var body: some View {
        switch selos {
                case 1:
                    return Image("progressbar1")
                case 2:
                    return Image("progressbar2")
                case 3:
                    return Image("progressbar3")
                case 4:
                    return Image("progressbar4")
                case 5:
                    return Image("progressbar5")
                case 6:
                    return Image("progressbar6")
                default:
                    return Image("progressbar0")
                }
    }
}

#Preview {
    ProgressBarImagem()
}
