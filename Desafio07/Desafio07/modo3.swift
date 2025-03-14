//
//  modo3.swift
//  Desafio07
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct modo3: View {
    @State  var cor: Color = .darkblue
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
                        Text("Nome: Nicolly").foregroundColor(.white)
                        Text("Sobrenome: Ribeiro").foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    modo3()
}
