//
//  modo2.swift
//  Desafio07
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct modo2: View {
    @State  var cor: Color = .darkblue
    @State private var name: String = ""
    var body: some View {
        ZStack{
            cor
                .ignoresSafeArea()
            
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 100)
                
                Spacer()
                
                VStack{
                    
                    TextField("nome: ", text: $name)
                        .padding()
                    
                    if !name.isEmpty {
                        Text("Bem vindo \(name)!")
                            .bold()
                            .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: modo2_2(pnome: name)){
                        Text("Acessar tela").foregroundColor(.blue)
                        
                    }
                    
                    
                } .frame(width: 250, height: 150)
                    .background(.pink)
                    .cornerRadius(5)
                
                Spacer()
            }
        }
    }
}
    
    
    #Preview {
        NavigationStack{
            modo2()
        }
    }
