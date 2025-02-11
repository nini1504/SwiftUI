//
//  modo2_2.swift
//  Desafio07
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct modo2_2: View {
    @State  var cor: Color = .darkblue
    var pnome: String
    var body: some View {
            ZStack{
                cor
                    .ignoresSafeArea()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 100)
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.pink)
                            .cornerRadius(5)
                        VStack{
                            Text("Olá, \(pnome)").foregroundColor(.white)
                        }
                    }
                    Spacer()
                   
                }
            }
        }
}

#Preview {
    modo2_2(pnome: "teste")
}
