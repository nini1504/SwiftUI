//
//  ContentView.swift
//  Desafio07
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    @State  var cor: Color = .darkblue
    @State  var m3 = false
    var body: some View {
        
        
        
        NavigationStack{
            
            ZStack {
                cor
                    .ignoresSafeArea()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 100)
                    
                    Spacer()
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 200, height: 100)
                                .foregroundColor(.pink)
                                .cornerRadius(5)
                            NavigationLink(destination: modo1()){
                                Text("Modo 1").foregroundColor(.white)
                                
                            }
                        }
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 200, height: 100)
                                .foregroundColor(.pink)
                                .cornerRadius(5)
                            NavigationLink(destination: modo2()){
                                Text("Modo 2").foregroundColor(.white)
                                
                            }
                        }
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 200, height: 100)
                                .foregroundColor(.pink)
                                .cornerRadius(5)
                            Button("Modo 3"){
                                m3.toggle()
                            }.foregroundStyle(.white)
                                .frame(width: 200, height: 100)
                                .sheet(isPresented: $m3){
                                    modo3()
                                }
                            
                        }
                       
                        
                    }
                    Spacer()
                }
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
