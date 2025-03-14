//
//  ContentView.swift
//  Desafiio12
//
//  Created by Turma02-18 on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var cor: Color = .white

    @StateObject var vm = Model()
    var body: some View {
        NavigationStack{
            ZStack{
                cor.ignoresSafeArea()
                
                ScrollView{
                    Text("Vizualize as informações de umidade!")
                        .bold()
                    Spacer()
                    ForEach(vm.arrayUmidade, id: \.self){ i in
                        ZStack{
                            
                            
                            if(Double(i.umidade) ?? 0 > 50){
                                VStack{
                                    
                                } .frame(width: 350, height: 100)
                                    .background(.blue)
                                    .opacity(0.5)
                                    .cornerRadius(6)
                                    .foregroundColor(.black)
                            }else{
                                VStack{
                                    
                                } .frame(width: 350, height: 100)
                                    .background(.red)
                                    .opacity(0.5)
                                    .cornerRadius(6)
                                    .foregroundColor(.black)
                            }
                            
                            VStack{
                                Text("Data: \(vm.DataHora(i.dataHora))")
                                
                                HStack{
                                    Text("Umidade: \(i.umidade) %")
                                        .foregroundColor(.black)
                                    
                                    
                                }
                            }
                        }
                    }
                    
                }.onAppear(){
                    Timer.scheduledTimer(withTimeInterval: 2, repeats: true){ _ in
                        vm.fetch()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
