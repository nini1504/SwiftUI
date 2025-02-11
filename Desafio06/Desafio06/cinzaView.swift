//
//  cinzaView.swift
//  Desafio06
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct cinzaView: View {
    @State  var cor: Color = .gray
    var body: some View {
        
        
        ZStack{
            cor
            .edgesIgnoringSafeArea(.top)
        
        Circle()
            .fill(.black)
            .frame(width: 300)
        
            Image(systemName: "paintpalette")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(.gray)
        }
          
        
    }
}

#Preview {
    cinzaView()
}
