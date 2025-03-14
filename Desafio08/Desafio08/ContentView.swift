//
//  ContentView.swift
//  Desafio08
//
//  Created by Turma02-18 on 12/02/25.
//

import SwiftUI

struct musica: Identifiable{
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}

var arrayMusicas = [
    musica(id: 1, nome: "Video Game", artista: "Lana del Rey" , capa: "https://i.discogs.com/aHCOeoRZiMgdqoX5DtlIM1BqCh42kMDj0leUhUQzF3s/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNjg0/NjgtMTM5MTY1MjA4/NS00OTIzLmpwZWc.jpeg"),
    musica(id: 2, nome: "Blue Jeans", artista: "Lana del Rey" , capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/b/6/5/5/864081584380741.jpg"),
    musica(id: 3, nome: "Salvatore", artista: "Lana del Rey" , capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkDHacFPSHm91f-tfoQTcwoHimenQ77zly5g&s"),
    musica(id: 4, nome: "Talking to the moon", artista: "Bruno Mars" , capa: "https://i1.sndcdn.com/artworks-KazzR5SuBOvXllmP-Hp8GoQ-t500x500.jpg"),
    musica(id: 5, nome: "Ultraviolence", artista: "Lana del Rey" , capa: "https://upload.wikimedia.org/wikipedia/pt/thumb/7/74/Ultraviolence.png/220px-Ultraviolence.png"),
    musica(id: 6, nome: "Naked", artista: "James Arthur" , capa: "https://lastfm.freetls.fastly.net/i/u/ar0/81ae959aa4bfdc1c2b2a299d3ef14c8f.jpg"),
    musica(id: 7, nome: "All of me", artista: "Jhon Legend" , capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSM0aN9WIA4oxdqlC7NrklOGnoXeEHfFXZIQ&s"),
    musica(id: 8, nome: "All i want", artista: "kodaline" , capa: "https://i.discogs.com/jW5XaqnJhQ6lhZbk1DvznTwBtxyaViJtGsEkIyS6AQw/rs:fit/g:sm/q:90/h:528/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY5NDcw/NDgtMTY1MjAxMDg5/NS0yNTcxLmpwZWc.jpeg"),
    musica(id: 9, nome: "Rolling in the deep", artista: "Adele" , capa: "https://upload.wikimedia.org/wikipedia/pt/5/5a/Capa_do_single_Rolling_in_The_Deep.jpg"),
    musica(id: 10, nome: "Someone Like you", artista: "Adele" , capa: "https://upload.wikimedia.org/wikipedia/pt/5/5a/Capa_do_single_Rolling_in_The_Deep.jpg")
]

struct sugeridas : Identifiable{
    var id: Int
    var nome: String
    var capa: String
}
var sugestaos = [ sugeridas(id: 1, nome: "Coldplay", capa: "https://m.media-amazon.com/images/S/pv-target-images/c05c0ddd107616d5978b5da0c2217495e0aae35b5dcc77e5078cadbeeb5ec988._SX1080_FMjpg_.jpg"),
                  sugeridas(id: 2, nome: "Shawn Mendes", capa: "https://m.media-amazon.com/images/I/81b0ZxiBeYL._AC_UF350,350_QL50_.jpg"),
                  sugeridas(id: 3, nome: "Christina Perri", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUMotQQ81z9ROcYwLdWkTFOSYrnguDuVYZ7w&s")
]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack
            {
                LinearGradient(gradient: Gradient(colors: [.pink, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                ScrollView{
                    VStack {
                        
                        AsyncImage(url: URL(string: "https://lanabrasil.com.br/wp-content/uploads/2024/08/IMG_9689-1-805x1024.jpeg")) { image in
                            image
                                .resizable()
//                                .scaledToFit()
                                .frame(width: 260, height: 260)
                            
                        } placeholder: {
                            Color.gray
                                .frame(width: 250, height: 250)
                        }
                        VStack(alignment: .leading){
                            
                            Text("  Favoritas")
                                .multilineTextAlignment(.leading)
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.top, 20)
                            
                            HStack{
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20)
                                    .foregroundColor(.white)
                                
                                Text("Nicolly Ribeiro Luz")
                                    .foregroundColor(.white)
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30)
                                    .foregroundColor(.white)
                            }.padding()
                            Spacer()
                            
                            
                        }
                        Spacer()
                        VStack(alignment: .leading, spacing: 20){
                            ForEach(arrayMusicas) { i in
                                
                                NavigationLink(destination: playerView(pMusica: i)){
                                    HStack(){
                                        AsyncImage(url: URL(string: i.capa)) { image in
                                            image
                                                .resizable()
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(maxWidth: 60, maxHeight: 60)
                                        VStack(alignment: .leading){
                                            Text(i.nome)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            Text(i.artista)
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 25)
                                            .foregroundColor(.white)
                                        
                                    }.padding(.horizontal, 20)
                                }
                            }
                        }
                        
                    }
                    
                    ScrollView(.horizontal){
                        HStack{Text("Sugeridas")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                            Spacer()
                        }.padding()
                        
                        HStack(spacing: 20) {
                            
                            ForEach(sugestaos) { s in
                                
                                VStack{
                                    
                                    AsyncImage(url: URL(string: s.capa)) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(maxWidth: 200, maxHeight: 200)
                                            .clipped()
                                            .aspectRatio(1, contentMode: .fit)
                                        
                                    } placeholder: {
                                        Color.gray
                                            .frame(maxWidth: 200, maxHeight: 200)
                                    }
                                    
                                    Text(s.nome)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                }.padding()
                                
                                
                            }
                        }
                    }
                    .frame(height: 350)
                }
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}


