
//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma02-18 on 05/02/25.
//
//  Imagens e textos

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("foto")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
                
            VStack{
                Text("Nicolly Ribeiro Luz").foregroundColor(.pink)
                Text("Sistemas de Informaçao").foregroundColor(.purple)
                Text("HackaTruck").foregroundColor(.yellow)}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
