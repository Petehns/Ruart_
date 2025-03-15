//
//  progressbar.swift
//  Ruarte
//
//  Created by Luiz Eduardo Silva Ferreira on 20/06/24.
//

import SwiftUI

struct ProgressBar: View {
    
    @State var volume: CGFloat = 10
    @State var bolinhaAvanca = false
    @State var bolinhaVolta = false
    var bolinha: [Int] = [0, 1, 2, 3, 4, 5]
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 300, height: 15)
                    .foregroundColor(.pinkRuart)
                HStack {
                    ForEach(0..<5, id: \.self){index in
                        
                        if Int(volume) / 6 <= index{
                            Circle()
                                .frame(width: 30)
                                .foregroundColor(.pinkRuart)
                        } else {
                            Circle()
                                .frame(width: 25)
                                .foregroundColor(.redRuart)
                        }
                        
                        Spacer()
                    }
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(.pinkRuart)
                    
                }
                .frame(width: 310, height: 20)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: volume, height: 15)
                    .foregroundColor(.redRuart)
                    .frame(width: 300, alignment: .leading)
            }
        }
    }
}
#Preview {
    ProgressBar()
}
