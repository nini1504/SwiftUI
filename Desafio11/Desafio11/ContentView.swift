//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma02-18 on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = Model()
    @State var cor: Color = .clean
    var body: some View {
        NavigationStack{
            ZStack{
                cor.ignoresSafeArea()
                ScrollView{
                    VStack {
                        Text("Escolha e adote um animalzinho!")
                            .multilineTextAlignment(.center)
                            .bold()
                        ForEach(vm.arrayDogs, id: \.self){ i in
                            NavigationLink(destination: dogView(dog: i)){
                                HStack{
                                    Spacer()
                                    VStack{
                                        AsyncImage(url: URL(string: i.foto)) { image in
                                            image
                                                .resizable()
                                                .frame(width: 250, height: 250)
                                                .cornerRadius(15)
                                        } placeholder: {
                                            Color.gray
                                        }
                                        Text(i.nome)
                                    }
                                    Spacer()
                                }
                                
                                .padding()
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

