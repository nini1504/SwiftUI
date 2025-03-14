//
//  Model.swift
//  Desafio11
//
//  Created by Turma02-18 on 19/02/25.
//

import Foundation

struct Dogs : Decodable, Hashable{
    var nome: String
    var raça: String
    var idade: Int
    var foto: String
    var localizacao: Localizacao
    var castrado: Bool
}

struct Localizacao: Decodable, Hashable{
    var cidade: String
    var estado: String
    var rua: String
    var numero: Int
}


class Model : ObservableObject{
    
    @Published var arrayDogs : [Dogs] = []
    
    func fetch(){
        
        let url = "http://127.0.0.1:1880/lerDogs"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){dados, _, error in
            do{
                self.arrayDogs = try JSONDecoder().decode([Dogs].self, from: dados!)
                print(self.arrayDogs.count)
            }catch{
                print(error)
            }
            
        }
        task.resume()
    }
}
