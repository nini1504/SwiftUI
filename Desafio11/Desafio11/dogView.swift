//
//  dogView.swift
//  Desafio11
//
//  Created by Turma02-18 on 19/02/25.
//

import SwiftUI

struct dogView: View {
    var dog : Dogs
    @State var cor: Color = .clean
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            ScrollView{
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: dog.foto)) { image in
                        image
                            .resizable()
                            .frame(width: 250, height: 250)
                            .cornerRadius(15)
                    } placeholder: {
                        Color.gray
                    }
                    
                    Text(dog.nome).font(.title).bold()
                   
                    VStack{
                        Text("Raça: \(dog.raça)")
                        Text("Idade: \(dog.idade) anos")
                        Text("Localização:")
                        Text("\(dog.localizacao.cidade) - \(dog.localizacao.estado) - Número: \(dog.localizacao.numero)")
                        Spacer()
                        
                        Button("Entrar em contato"){
                        }
//                        .foregroundColor(.white)
//                        .background(Color.gray)
//                        .cornerRadius(3.0)
                    }
                    
                }
                Spacer()
                
            }
        }
    }
}
