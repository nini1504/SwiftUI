//
//  dogsView.swift
//  Desafio10
//
//  Created by Turma02-18 on 17/02/25.
//

import SwiftUI

struct dogsView: View {
    var dog : Dogs
    @State var cor: Color = .yellow
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            ScrollView{
                VStack{
                    Text(dog.attributes.name).font(.title).bold()
                    HStack{
                        Spacer()
                        Text(dog.attributes.description).multilineTextAlignment(.center)
                        Spacer()
                    }.padding()
                    .background(.gray)
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.black)
                        .bold()
                    VStack(spacing: 20){
                        Text("Tempo mínimo de vida: \(Int(dog.attributes.life.min)) anos")
                        Text("Tempo máximo de vida: \(Int(dog.attributes.life.max)) anos")
                        Text("Peso mínimo do macho: \(dog.attributes.male_weight.min, specifier: "%.2f") Kg")
                        Text("Peso máximo do macho:\(dog.attributes.male_weight.max, specifier: "%.2f") Kg")
                        Text("Peso mínimo da fêmea:\(dog.attributes.female_weight.min, specifier: "%.2f") Kg")
                        Text("Peso máximo da fêmea:\(dog.attributes.female_weight.max, specifier: "%.2f") Kg")
                        Text("Hypoallergenico: \(dog.attributes.hypoallergenic)")
                        
                        Spacer()
                    }
                }
                
            }
        }
    }
}
