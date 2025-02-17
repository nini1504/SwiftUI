//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma02-18 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = Model()
    @State var cor: Color = .yellow
    var body: some View {
        
        NavigationStack{
            ZStack{
                cor.ignoresSafeArea()
                ScrollView{
                    
                    VStack {
                        
                        Text("Escolha uma raça para vizualizar as informações!")
                            .multilineTextAlignment(.center)
                        ForEach(vm.arrayDogs){ i in
                            NavigationLink(destination: dogsView(dog: i)){
                                HStack{
                                    Spacer()
                                    Text(i.attributes.name)
                                    Spacer()
                                }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .background(.gray)
                                    .cornerRadius(10)
                                    .padding()
                                    .foregroundColor(.white)
                                    .bold()
                                
                                
                                
                            }
                        }
                    }.onAppear(){
                        vm.fetch()
                    }
                    .padding()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
