//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma02-18 on 06/02/25.
// Uma simulaçao da pagina do instagram

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            HStack{
                Image("Image")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
        
                
                
                VStack{
                    HStack(spacing: 25){
                        VStack {
                            Text("8")
                                .bold()
                            Text("Posts")
                                .font(.system(size: 13))
                        }
                        VStack {
                            Text("12k")
                                .bold()
                            Text("Seguidores")
                                .font(.system(size: 13))
                        }
                        VStack {
                            Text("2k")
                                .bold()
                            Text("Seguindo")
                                .font(.system(size: 13))
                        }
                        
                    }
                    
                    Button(action: {}) {
                        Text("Editar Perfil")
                            .foregroundColor(.white)
                            .frame(width: 250, height: 25)
                            .background(Color.gray)
                            .cornerRadius(5)
                        
                    }
                    
                }
                
            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading){
                HStack{
                    Text("Nicolly Ribeiro")
                        .bold()
                }
                HStack{
                    Text("Apaixonada por tecnologia")
                    Spacer()
                }
            }
            .padding(.bottom, 30)
               
            
            HStack(spacing: 70){
                Image(systemName: "square.grid.3x3.fill")
                    .foregroundColor(.gray)
                    .font(.system(size: 30))
               
                Image(systemName: "square.inset.filled")
                    .foregroundColor(.gray)
                    .font(.system(size: 30))
             
                Image(systemName: "person.crop.rectangle.stack.fill")
                    .foregroundColor(.gray)
                    .font(.system(size: 30))
            }.padding(.bottom, 30)
            
            
            VStack{
                HStack{
                    
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    
                }
                
                HStack{
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    
                }
                HStack{
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    Rectangle()
                        .foregroundColor(.gray)
                    
                }
            }
            
            
            Spacer()
            
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
