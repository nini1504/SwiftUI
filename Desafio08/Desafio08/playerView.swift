//
//  playerView.swift
//  Desafio08
//
//  Created by Turma02-18 on 12/02/25.
//

import SwiftUI

struct playerView: View {
    
    var pMusica : musica
    
    var body: some View {
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.pink, .black]), startPoint: .top, endPoint: .bottom)
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: pMusica.capa)) { image in
                        image
                            .resizable()
                            .frame(width: 300, height: 300)
                    } placeholder: {
                        Color.gray
                    }
                    
                    Text(pMusica.nome)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(pMusica.artista)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    HStack(spacing: 40){
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(.white)
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(.white)
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(.white)
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(.white)
                        Image(systemName: "repeat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
}

#Preview {
    playerView(pMusica:  musica(id: 1, nome: "Video Game", artista: "Lana del Rey" , capa: "https://i.discogs.com/aHCOeoRZiMgdqoX5DtlIM1BqCh42kMDj0leUhUQzF3s/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNjg0/NjgtMTM5MTY1MjA4/NS00OTIzLmpwZWc.jpeg") )
}
