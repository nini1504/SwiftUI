//
//  infoView.swift
//  Desafio09
//
//  Created by Turma02-18 on 13/02/25.
//

import SwiftUI

struct infoView: View {
    var point : local
    @State  var cor: Color = .claro
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            
            VStack{
                AsyncImage(url: URL(string: point.foto)) { image in
                    image
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(5)
                        .padding(9)
                        .background(.black)
                        .padding()
                        
                } placeholder: {
                    Color.gray
                }
                
                Text(point.nome)
                    .font(.largeTitle)
                    .bold()
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(30)
                        .overlay{
                            Text(point.descricao)
                                .padding(30)
                                .multilineTextAlignment(.center)
                        }
                }
                
            }
        }
    }
        
}

#Preview {
    infoView(point: local(nome: "Palace of Versailles", foto: "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQQBeX2ZkR_9F23zHnDdBswNV3OLf3fO6JLVEXjEUILiR88So7h6_N8RBhWP4Y9DxTexwFmEjFM8cbJOG0JRy6TmD5mfgT2ck92vyQBHO0", descricao: "O Palácio de Versalhes é uma antiga residência real encomendada pelo rei Luís XIV, localizada em Versalhes, a cerca de 18 quilômetros a oeste de Paris, no departamento de Yvelines da região de Île-de-France, na França.", latitude: 48.804722, longitude: 2.121782))
}
