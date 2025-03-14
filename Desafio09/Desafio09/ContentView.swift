//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma02-18 on 13/02/25.
//

import SwiftUI
import MapKit

struct local: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

var pontos = [
    local(nome: "Palace of Versailles", foto: "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQQBeX2ZkR_9F23zHnDdBswNV3OLf3fO6JLVEXjEUILiR88So7h6_N8RBhWP4Y9DxTexwFmEjFM8cbJOG0JRy6TmD5mfgT2ck92vyQBHO0", descricao: "O Palácio de Versalhes é uma antiga residência real encomendada pelo rei Luís XIV, localizada em Versalhes, a cerca de 18 quilômetros a oeste de Paris, no departamento de Yvelines da região de Île-de-France, na França.", latitude: 48.804722, longitude: 2.121782),
    local(nome: "Noruega", foto: "https://www.flytap.com/-/media/Flytap/destinations/INSPIRE/0921/1920noruega2.jpg?h=655&w=1920&la=pt-BR&hash=CD53A5DEDAC23A7295F150E281B622F10AC0980E", descricao: "Com elevado Produto Interno Bruto (US$ 546,8 bilhões em 2023), a Noruega é um país de alto padrão de vida. Seu PIB per capita é um dos mais altos do mundo e o país tem regularmente estado dentre as primeiras colocações no Índice de Desenvolvimento Humano (IDH) das Nações Unidas.", latitude: 60.4720, longitude: 8.4689),
    local(nome: "Edinburgh Castle", foto: "https://lh5.googleusercontent.com/p/AF1QipOFSwi9MiEcHrB6Aut_zIbo_apmZZ15_gXJAKr3=w1080-h624-n-k-no", descricao: "O Castelo de Edimburgo é uma antiga fortaleza que domina a silhueta da cidade de Edimburgo, na Escócia, a partir da sua posição no topo do Castle Rock (Rochedo do Castelo). Trata-se de um dos mais importantes castelos do país, sendo a segunda atração turística mais visitada na Escócia,[1] ao receber anualmente cerca de um milhão de pessoas.", latitude: 55.9486, longitude: -3.1999),
    local(nome: "Santorini", foto: "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQ6vam5PpOHL7RGI2mEhSWqpQteLODxw2ntQM0DbY81S-P7Ila01ubZplNuiMErhG6zMcMSLBNxt4DHiSU7IpxZFdvfQ08Pa2yYDN3XFw", descricao: "Santorini é uma das ilhas das Cíclades no Mar Egeu. Foi devastado por uma erupção vulcânica no século XVI a.C., moldando para sempre sua paisagem acidentada. As casas caiadas de branco e cubiformes de suas 2 principais cidades, Fira e Oia, se apegam a penhascos acima de uma caldeira subaquática (cratera). Eles têm vista para o mar, pequenas ilhas a oeste e praias compostas por seixos de lava preto, vermelho e branco.", latitude: 36.3932, longitude: 25.4615),
    local(nome: "San Francisco", foto: "https://lh5.googleusercontent.com/p/AF1QipPVuy6XeZQ5ROaA-70kbYp1of5JwIPL8NFntfXC=w1080-h624-n-k-no", descricao: "São Francisco, oficialmente a Cidade e Condado de São Francisco, é um centro comercial, financeiro e cultural no norte da Califórnia. Com uma população de 808.988 habitantes em 2023, São Francisco é a quarta cidade mais populosa do estado da Califórnia e a 17a mais populosa dos EUA.", latitude: 37.7749, longitude: -122.4194)
    
]

struct ContentView: View {
    @State private var showingSheet = false
    @State private var posicao = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
    ))
    @State private var selectedPlace = local(nome: "Palace of Versailles", foto: "https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQQBeX2ZkR_9F23zHnDdBswNV3OLf3fO6JLVEXjEUILiR88So7h6_N8RBhWP4Y9DxTexwFmEjFM8cbJOG0JRy6TmD5mfgT2ck92vyQBHO0", descricao: "O Palácio de Versalhes é uma antiga residência real encomendada pelo rei Luís XIV, localizada em Versalhes, a cerca de 18 quilômetros a oeste de Paris, no departamento de Yvelines da região de Île-de-France, na França.", latitude: 48.804722, longitude: 2.121782)
    
    
    
    var body: some View {
        VStack {
            
            Picker("Escolha um local", selection: $selectedPlace) {
                ForEach(pontos, id: \.self) { p in
                    Text(p.nome)
                }
            }.onChange(of: selectedPlace) { oldValue, newValue in
                posicao = MapCameraPosition.region(MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: newValue.latitude, longitude: newValue.longitude),
                    span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
            }
            
            Map(position: $posicao){
                
                
                ForEach(pontos, id: \.self) { p in
                    Annotation(p.nome, coordinate: CLLocationCoordinate2D(latitude: p.latitude, longitude: p.longitude)) {
                        Image(systemName: "pin.fill")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 20, height: 30)
                            .onTapGesture{
                                selectedPlace = p
                                showingSheet = true
                            }
                    }
                    
                    
                }
                
            }.ignoresSafeArea()
                .sheet(isPresented: $showingSheet) {
                    infoView(point: selectedPlace)
                }
        }
    }
}

#Preview {
    ContentView()
}
