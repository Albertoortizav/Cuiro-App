//
//  ContentView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 10/05/26.
//

import SwiftUI

struct SigInView: View {
    @State var userName = ""
    @State var fullName = ""
    @State var birthday = ""
    @State var male: Bool = false
    @State var female: Bool = false
    @State var email: Bool = false
    @State var password = ""
    var body: some View {
        VStack(alignment: .center,spacing: 30) {
           Text("Sign In")
                .font(Font.largeTitle)
                .bold()
            TextField("User name", text: $userName )
                .bold()

                .overlay(
                    Rectangle()
                        .frame(width: .infinity,height: 1),
                    alignment: .bottom
                )
                .padding()
            TextField("Full name", text: $fullName )
                .bold()
                .overlay(
                    Rectangle()
                        .frame(width: .infinity,height: 1),
                    alignment: .bottom
                )
                .padding()
            TextField("Date of birth", text: $birthday)
                .bold()
                .overlay(
                    Rectangle()
                        .frame(width: .infinity,height: 1),
                    alignment: .bottom
                )
                .padding()
            HStack{
                Spacer()
                HStack{
                    Toggle("", isOn: $female)
                        .tint(.pink)
                        .labelsHidden()
                    Text("Female")
                        .font(Font.title2.bold())
                }
                Spacer()
                HStack{
                    Toggle("", isOn: $male)
                        .tint(.pink )
                        .labelsHidden()
                    Text("Male")
                        .font(Font.title2.bold())
                }
                Spacer()
            }.padding()
            TextField("Email", text: $birthday)
                .bold()
                .overlay(
                    Rectangle()
                        .frame(width: .infinity,height: 1),
                    alignment: .bottom
                )
                .padding()
            TextField("Password", text: $password)
                .bold()
                .overlay(
                    Rectangle()
                        .frame(width: .infinity,height: 1),
                    alignment: .bottom
                )
                .padding()
        }
        .padding()
    }
    
}

#Preview {
   SigInView()
}
