//
//  ContentView.swift
//  2024 GATOS TORTURADOS
//
//  Created by MAC32 on 25/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongusername = 0
    @State private var wrongpassword = 0
    @State private var showingloginscreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.5))
                Circle()
                    .scale(1.1)
                    .foregroundColor(.white)
                VStack{
                    Text("SABU")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Usuario", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongusername))
                    
                    SecureField("Contraseña", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongpassword))
                    
                    Button("Iniciar sesión"){
                        authenticateUser(username: username, password: password)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    
                    
                    NavigationLink(destination:Text("Iniciaste sesion @\(username)"), isActive: $showingloginscreen)
                   {
                       EmptyView()
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
            }
        }
    func authenticateUser (username : String, password : String){
        if username.lowercased() == "sabu2024" {
            wrongusername = 0
            if password.lowercased() == "hackaton"{
                wrongpassword = 0
                showingloginscreen = true
            }
            else{
                wrongpassword = 2
            }
        } else{
            wrongusername = 2
        }
    }
    
    }
    



#Preview {
    ContentView()
}
