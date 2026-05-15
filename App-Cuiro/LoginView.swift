//
//  SiginView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 14/05/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var remember: Bool = false
    @State  private var passwordForget = false
    @State private var createAccount = false
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Log in")
                .font(.largeTitle)
                .bold()

            VStack(spacing: 8) {
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                Rectangle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)

            VStack(spacing: 8) {
                SecureField("Password", text: $password)
                Rectangle()
                    .fill(Color.secondary.opacity(0.3))
                    .frame(height: 1)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
            HStack{
                Toggle("", isOn: $remember)
                    .toggleStyle(.automatic)
                    .tint(.pink)
                    .labelsHidden()
                Text("Remember me")
                Spacer()
                Toggle("Forgot the password?", isOn: $passwordForget)
                    .toggleStyle(.button)
                    .foregroundStyle(.black)
            }
            .padding(.bottom,60)
            Button(action:{
                
                
            }){
                Text("Log in")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.systemGray4))
                    .foregroundColor(.black)
                    .cornerRadius(30)
                
            } .padding([.leading,.trailing],50)
            .padding(.bottom,30)
            
            HStack{
                Text("Are you new? ")
             Toggle("Create ypur account",isOn: $createAccount)
                    .toggleStyle(.button)
                    .foregroundStyle(.black)
                    .bold()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
   LoginView()
}
