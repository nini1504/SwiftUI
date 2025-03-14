//
//  ContentView.swift
//  Desafio04
//
//  Created by Turma02-18 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var showingAlert = false
    var body: some View {
        VStack {
            
            ZStack{
                Image("caminhao")
                    .resizable()
                    .scaleEffect(CGSize(width: 1.5, height: 1.5))
                    .opacity(0.20)
                
                VStack{
                    TextField("Digite seu nome: ", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    if !name.isEmpty {
                        Text("Bem vindo \(name)!")
                            .zIndex(1.0)
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                    
                    Spacer()
                }
            }
            
            
            Button("Entrar") {
                        showingAlert = true
                    }
                    .alert("ALERTA! \n Você irá iniciar o desafio da aula agora", isPresented: $showingAlert) {
                        Button("Vamos lá!", role: .cancel) { }
                    }
               
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
