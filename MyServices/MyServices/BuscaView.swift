//
//  BuscaView.swift
//  MyServices
//
//  Created by Turma02-2 on 27/02/25.
//

import SwiftUI

struct BuscaView: View {
    
    @State private var searchText = ""
    @StateObject var vm = ViewModel()
    
    var searchResults: [Profissao] {
        if searchText.isEmpty {
            return profissoes
        } else {
            return profissoes.filter {
                $0.nome.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color.fundo.ignoresSafeArea()
                Text("").navigationTitle("Profissões").foregroundColor(.white)
                ScrollView{
                    ForEach(searchResults) { p1 in
                        VStack{
                            NavigationLink(destination: ResultadosView(p: vm.filterProfissionaisByNome(p1.nome))){
                                HStack(alignment: .center){
                                    Image(systemName: p1.icone)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                        .foregroundColor(.white)
                                        .padding(.leading, 30)
                                        .padding(.trailing, 20)
                                    
                                    Text(p1.nome)
                                        .font(.title2).foregroundStyle(.white)
                                        .padding(1)
                                    
                                    
                                    Spacer()
                                    
                                }.frame(width: 320, height: 100)
                                    .background(.botaoCategoria)
                                    .cornerRadius(10)
                                    .padding(2)
                                
                            }
                        }
                    }
                }
            }
        }.onAppear(){
            vm.fetchProfissionais()
        }
        .searchable(text: $searchText)
        
        
        
    }
}

#Preview {
    BuscaView()
}
