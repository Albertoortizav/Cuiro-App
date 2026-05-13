//
//  ProfileView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 10/05/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        @State var signInButton = false
        @State var logInButton = false
        
        VStack{
            VStack(alignment:.center, spacing: 35){
                Image("CuiRo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 174, height: 174)
                
                Text("Welcome")
                    .font(.system(size: 32, weight: .bold, design: .default))
                
                Text("Hi, there!\nTaking care of yourself is fighting, resisting and beating breast cancer")
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
              
                Button(action:{}){
                    
                    Text("Log in")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray4))
                        .foregroundColor(.black)
                        .cornerRadius(30)
                }
                
                Button(action:{}){
                    Text("Sign In")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray4))
                        .foregroundColor(.black)
                        .cornerRadius(30)
                }
            }
            .padding([.leading,.trailing],50)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color(red: 253/255, green: 230/255, blue: 240/255)
        .ignoresSafeArea()
        )
    }
}

#Preview {
    ProfileView()
}
