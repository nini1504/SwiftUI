//
//  Model.swift
//  ProjetoFinal
//
//  Created by Turma02-18 on 26/02/25.
//

import Foundation

struct Profissional: Codable, Hashable{
    var nome: String
    var foto: String
    var profissao: String
    var estrelas: Double
    var telefone: String
    var contratacoes: Int
    var descricao: String
    var comentarios: [Comentario]
}

// var novoArray = arrayProfissional.filter({ $0.profissao = m.nome })

struct Comentario: Codable, Identifiable, Hashable{
    var id: String
    var comentario: String
}

struct Perfil: Codable, Hashable{
    var nome: String
    var foto: String
    var endereco: Endereco
    var favoritos: [String]
    var descricao: String
    var historico: Historico
}

struct Endereco: Codable, Hashable{
    var estado: String
    var cidade: String
    var bairro: String
    var rua: String
    var numero: Int
    var cep: Int
}

struct Historico: Codable, Identifiable, Hashable{
    var id: String
    var datahora: String
    var preco: Double
    var avaliacao: Double
}



class ViewModel : ObservableObject{
    
    @Published var arrayProfissionais : [Profissional] = []
    @Published var arrayPerfis : [Perfil] = []
    
    func fetchProfissionais(){
        
        let urlProfissionais = "http://192.168.128.15:1880/getprofissionais"

        
        let taskProfissionais = URLSession.shared.dataTask(with: URL(string: urlProfissionais)!){dados, _, error in
            do{
                self.arrayProfissionais = try JSONDecoder().decode([Profissional].self, from: dados!)
                print(self.arrayProfissionais.count)
            }catch{
                print(error)
            }
            
        }
       
        taskProfissionais.resume()
    }
    
    func fetchPerfis(){
        
        let urlPerfis = "http://192.168.128.15:1880/getperfis"
        
     
        let taskPerfis = URLSession.shared.dataTask(with: URL(string: urlPerfis)!){dados, _, error in
            do{
                self.arrayPerfis = try JSONDecoder().decode([Perfil].self, from: dados!)
                print(self.arrayPerfis.count)
            }catch{
                print(error)
            }
            
        }
        taskPerfis.resume()
    }
    
    func filterProfissionaisByNome (_ nomeProfissao : String) -> [Profissional]{
        
        var arrayByProf = arrayProfissionais.filter({ $0.profissao == nomeProfissao })
        return arrayByProf
    }
    
   
}
