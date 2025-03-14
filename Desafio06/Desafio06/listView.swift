//
//  listView.swift
//  Desafio06
//
//  Created by Turma02-18 on 11/02/25.
//

import SwiftUI

struct listView: View {
    var body: some View {
        
        NavigationStack{
            List{
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }.navigationTitle("List")
        }
            
            
    }
}

#Preview {
    listView()
}
