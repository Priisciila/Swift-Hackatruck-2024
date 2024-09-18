//
//  ContentView.swift
//  Aula01
//
//  Created by Turma01-24 on 18/09/24.
//

import SwiftUI

func getSquare(color: Color)-> some View{
        Rectangle()
        .foregroundColor(color)
        .frame(
            width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
            height: 100
        ).padding()
}

struct ContentView: View {
    var body: some View {
        HStack{
            VStack{
                getSquare(color: .red)
                Spacer()
                getSquare(color: .blue)
            }
            Spacer()
            VStack{
                getSquare(color: .green)
                Spacer()
                getSquare(color: .yellow)
            }
        }
    }
}

#Preview{
    ContentView()
}
