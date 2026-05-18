//
//  NavBarView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct NavBarView:View {
     @State var profile = false
    @State var routine = false
    var body: some View {
        HStack{
            Button(action: {}){
               Text("Menu")
                    .padding()
                    .bold()
                    .foregroundStyle(.white)
            }
            .background(Color.cyan)
            .cornerRadius(10)
            Spacer()
            Image("CuiRo")
                .resizable()
                .scaledToFit()
                .frame(width:70)
        }.padding()
        if profile{
            PrincipalContentView()
        }
        else if routine {
            RoutineView()
        }
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity,maxHeight: 100)
                .foregroundStyle(.white)
                .border(Color.gray)
            HStack(spacing:50){
                VStack{
                    Button(action:{}){
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.foregroundStyle(.black)
                    Text("Mensajes")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                }
                VStack{
                    Button(action:{routine = true}){
                        Image(systemName: "clock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.foregroundStyle(.black)
                    Text("Rutina")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "house.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.foregroundStyle(.black)
                    Text("Inicio")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.foregroundStyle(.black)
                    Text("Foro")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                }
                VStack{
                    Button(action:{profile = true
                        routine = false
                        
                    }){
                        Image(systemName: "person.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.foregroundStyle(.black)
                    Text("Perfil")
                        .fontWeight(.light)
                        .font(.system(size: 10))
                }
                
            }
        }
    }
}
#Preview
{
    NavBarView()
}
