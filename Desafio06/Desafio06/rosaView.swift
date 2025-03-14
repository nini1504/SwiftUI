//
//  rosaView.swift
//  Desafio06
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct rosaView: View {
    @State  var cor: Color = .pink
    var body: some View {
        
        ZStack{
            cor
            .edgesIgnoringSafeArea(.top)
        
        Circle()
            .fill(.black)
            .frame(width: 300)
        
            Image(systemName: "paintbrush")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(.pink)
        }
    }
}

#Preview {
    rosaView()
}
