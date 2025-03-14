//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma02-18 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State  var distancia: Float = 0.0
    @State  var tempo: Float = 0.0
    @State  var total: Float = 0.0
    @State  var cor: Color = .gray
    @State  var imagem: String = "home"
    
    
    var body: some View {
        ZStack{
            cor.opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Digite a distância (km): ")
                TextField("Digite a distância (km): ", value: $distancia, format: .number)
                    .keyboardType(.decimalPad)
                    .background(Color.white)
                    .frame(width: 100)
                    .cornerRadius(8)
                
                Text("Digite o tempo (h): ")
                TextField("Digite o tempo (h): ", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .background(Color.white)
                    .frame(width: 100)
                    .cornerRadius(8)
                
                Button("Calcular") {
                    total = distancia / tempo
                    
                    if(total >= 0 && total <= 9.9){
                        
                        cor = .green
                        imagem = "tartaruga"
                    }
                    else if(total >= 10 && total <= 29.9){
                        cor = .blue
                        imagem = "elefante"
                    }
                    else if(total >= 30 && total <= 69.9){
                        cor = .orange
                        imagem = "avestruz"
                    }
                    else if(total >= 70 && total <= 89.9){
                        cor = .yellow
                        imagem = "leao"
                    }
                    else if(total >= 90 && total <= 130){
                        cor = .red
                        imagem = "guepardo"
                    }
                    
                }
                
                Spacer()
                Text(String(format: "\(total) km/h"))
                    .font(.title)
                    
                Spacer()
                Image(imagem)
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 200)
                        .cornerRadius(8)
                    VStack{
                        HStack{
                            Text("TARTARUGA (0 - 9.9 km/h) ").foregroundColor(.white)
                            Circle()
                                .fill(.green)
                                .frame(width: 19)
                        }
                        HStack{
                            Text("ELEFANTE (10 - 29.9 km/h) ").foregroundColor(.white)
                            Circle()
                                .fill(.blue)
                                .frame(width: 19)
                        }
                        HStack{
                            Text("AVESTRUZ (30 - 69.9 km/h)").foregroundColor(.white)
                            Circle()
                                .fill(.orange)
                                .frame(width: 19)
                        }
                        HStack{
                            Text("LEÃO (70 - 89.9 km/h)          ").foregroundColor(.white)
                            Circle()
                                .fill(.yellow)
                                .frame(width: 19)
                        }
                        HStack{
                            Text("GUEPARDO (90 - 130 km/h)").foregroundColor(.white)
                            Circle()
                                .fill(.red)
                                .frame(width: 19)
                        }
                    
                }
                
            }
            
        }
        .padding()
    }
}

}

#Preview {
    ContentView()
}
