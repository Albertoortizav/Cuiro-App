//
//  SwiftUIView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct PrincipalContentView: View {
    var body: some View {
        VStack {
   
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 178)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:76)
                        .foregroundStyle(
                            Color(
                                red: 255.0/255.0,
                                green: 234.0/255.0,
                                blue: 247.0/255.0,
                            )
                        )
                    Text("Full name")
                        .bold()
                        .font(.title)
                    Text("@username")
                        .foregroundStyle(.gray)
                }
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 126)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack(alignment: .leading){
                    Text("Contact information")
                        .bold()
                        .font(.title2)
                    HStack{
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 34)
                        VStack(alignment: .leading){
                            Text("E-mail")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                            Text("ejemplo@emial.com")
                        }
                        
                    }.padding(.trailing,100)
                    
                }
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 164)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack (alignment: .leading){
                    Text("Informacion personal")
                        .bold()
                    HStack{
                        Image(systemName: "calendar.badge.exclamationmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 34)
                        VStack(alignment: .leading){
                            Text("Fecha de nacimiento")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                            Text("00/00/0000")
                            
                        }
                    }
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 34)
                        VStack(alignment: .leading){
                            Text("Genero")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                            Text("Genero")
                            
                        }
                    }
                    
                }.padding(.trailing,100)
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 132)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack(alignment: .leading){
                    Text("Acciones")
                    Button(action:{}){
                        Text("Editar Perfil")
                        .foregroundStyle(.white)
                         
                    }
                    .frame(width: 317, height: 58)
                    .background(Color(red: 227/255, green: 82/255, blue: 123/255))
                    .cornerRadius(16)
                }
            }
          
                
            
        }.padding()
    }
}

#Preview {
    PrincipalContentView()
}
