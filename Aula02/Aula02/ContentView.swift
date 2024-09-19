//
//  ContentView.swift
//  Aula02
//
//  Created by Turma01-24 on 19/09/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("truck2")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .overlay(Color.white.opacity(0.8))
    }
}

struct ScreenTitle: View {
    var nome: String
    
    var body: some View {
        Text(nome)
            .font(.largeTitle)
            .foregroundColor(.black)
            .padding(.vertical, 10)
    }
}

struct IconView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
            
            Image("truck")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
        }
        .padding(.top, -30)
    }
}

struct ContentView: View {
    @State private var name: String = ""
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                ScreenTitle(nome: "Bem vinda, " + name)
                TextField("Nome", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.top, 0.9)
                    .zIndex(1)
                Spacer()
                
                IconView()
                
                Spacer()
                
                Button(action: {
                    showAlert = true
                }) {
                    Text("Entrar")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .cornerRadius(10)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Alerta!"),
                        message: Text("Você irá iniciar o desafio da aula agora, vamos lá."),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
