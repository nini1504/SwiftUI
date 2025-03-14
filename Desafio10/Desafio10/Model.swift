//
//  Model.swift
//  Desafio10
//
//  Created by Turma02-18 on 17/02/25.
//

import Foundation

struct Dogs : Decodable, Identifiable{
    var id: String
    var type: String
    var attributes: Attributes
    var relationships: Relationships
}

struct Attributes: Decodable{
    var name: String
    var description: String
    var life: Life
    var male_weight: Male_weight
    var female_weight: Female_weight
    var hypoallergenic: Bool
}

struct Life: Decodable{
    var max: Double
    var min: Double
}

struct Male_weight: Decodable{
    var max: Double
    var min: Double
}

struct Female_weight: Decodable{
    var max: Double
    var min: Double
}

struct Relationships: Decodable{
    var group: Group
}

struct Group: Decodable{
    var data: Data
}

struct Data: Decodable{
    var id: String
    var type: String
}

struct API: Decodable{
    var data: [Dogs]
}


class Model : ObservableObject{
    
    @Published var arrayDogs : [Dogs] = []
    
    func fetch(){
        
        let url = "https://dogapi.dog/api/v2/breeds"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){dados, _, error in
            do{
                self.arrayDogs = try JSONDecoder().decode(API.self, from: dados!).data
                print(self.arrayDogs.count)
            }catch{
                print(error)
            }
            
        }
        task.resume()
    }
}
