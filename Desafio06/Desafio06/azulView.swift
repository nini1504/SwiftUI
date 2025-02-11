//
//  azulView.swift
//  Desafio06
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct azulView: View {
    @State  var cor: Color = .blue
    var body: some View {
        
        ZStack{
            cor
                .edgesIgnoringSafeArea(.top)
            
            Circle()
                .fill(.black)
                .frame(width: 300)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                
        }
    }
}

#Preview {
    azulView()
}
