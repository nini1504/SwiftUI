//
//  Model.swift
//  Desafiio12
//
//  Created by Turma02-18 on 24/02/25.
//

import Foundation

struct Umidade : Decodable, Hashable{
    var umidade: String
    var dataHora: Int
}

class Model : ObservableObject{
    
    @Published var arrayUmidade : [Umidade] = []
    
    func fetch(){
        
        let url = "http://127.0.0.1:1880/umidadeGET"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!){dados, _, error in
            do{
                self.arrayUmidade = try JSONDecoder().decode([Umidade].self, from: dados!).sorted(by: { $0.dataHora > $1.dataHora })
                print(self.arrayUmidade.count)
            }catch{
                print(error)
            }
            
        }
        task.resume()
    }
    
    
    func DataHora(_ data : Int)-> String{
        
        var updatedValue = data/1000
           let timeInterval = TimeInterval(updatedValue)
           let dateValue = Date(timeIntervalSince1970: timeInterval)
      
      return dateValue.formatted(date: .long, time: .shortened)
        
    }
}
