//
//  Inicio.swift
//  2024 GATOS TORTURADOS
//
//  Created by MAC32 on 25/11/24.
//

import SwiftUI
let iconos = ["house", "chart.bar", "plus", "calendar", "gear"]


struct Inicio: View {
    @State var Indexseleccionado = 0
    var body: some View {
        VStack{
            ZStack{
                switch Indexseleccionado {
                case 0 :
                    NavigationView{
                        VStack{
                            Text("Pantalla de inicio")
                        }
                        .navigationTitle("Inicio")
                    }
                case 1 :
                    NavigationView{
                        VStack{
                            Text("Pantalla de perfil")
                        }
                        .navigationTitle("Estadisticas de usuario")
                    }

                case 2 :
                    NavigationView{
                        VStack{
                            Text("Pantalla de consultas")
                        }
                        .navigationTitle("Pide una consulta")
                    }

                case 3 :
                    NavigationView{
                        VStack{
                            Text("Pantalla de historial")
                        }
                        .navigationTitle("Historial Medico")
                    }

                default :
                    NavigationView{
                        VStack{
                            Text("Pantalla de ajustes")
                        }
                        .navigationTitle("Ajustes")
                    }
                    
                }
                
            }
            Spacer()
            
            HStack{
                ForEach(0..<5, id: \.self){
                    numeros in
                    Spacer()
                    Button(action:{
                        self.Indexseleccionado = numeros
                        
                    },label:{
                        Image(systemName: iconos[numeros])
                            .font(.title)
                        
                        
                    })
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Inicio()
}
