//
//  exercicio 2.swift
//  Aula01
//
//  Created by Turma01-24 on 18/09/24.
//

import SwiftUI

struct ImageBasic: View{
    var body: some View{
        VStack{
            HStack{
                Image("images")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                VStack(spacing: 10){
                    Text("hackatruck")
                        .foregroundStyle(.red)
                    Text("77 universidades")
                        .foregroundStyle(.blue)
                    Text("5 regiões do Brasil")
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    ImageBasic()
}
