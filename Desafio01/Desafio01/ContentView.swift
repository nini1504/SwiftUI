//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma02-18 on 05/02/25.
//
// Formas, cores e disposição da view

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                Rectangle().size(CGSize(width: 100.0, height: 100.0)).foregroundColor(.red)
                Spacer(minLength: 170)
                Rectangle().size(CGSize(width: 100.0, height: 100.0)).foregroundColor(.blue)
            }
            
            Spacer(minLength: 480)
            
            HStack{
                Rectangle().size(CGSize(width: 100.0, height: 100.0)).foregroundColor(.green)
                Spacer(minLength: 170)
                Rectangle().size(CGSize(width: 100.0, height: 100.0)).foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
