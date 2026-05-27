//
//  sideMenuHeaderView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 26/05/26.
//

import SwiftUI

struct sideMenuHeaderView: View {
    var body: some View {
        VStack{
        Circle()
                .scaledToFit()
                .frame(width:100)
            Text("Username")
            Text("@usename")
                List{
                    Section(header:Text("Main").foregroundStyle(.pink)){
                        HStack{
                            Text("Home")
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Text("Notifications")
                                .padding()
                            Spacer()
                        }
                }
                    .frame(height: 20)
               
                    .listRowBackground(
                       RoundedRectangle(cornerRadius: 12)
                           .fill(Color(red: 242/255, green: 194/255, blue: 197/255).opacity(0.4))
                   )
                Section(header:Text("Settings")
                    .foregroundStyle(.pink)){
                        HStack{
                            Text("Settings")
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Text("Help and support")
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Text("About")
                                .padding()
                            Spacer()
                        }
                }.frame(height: 20)
                    .listRowBackground(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(red: 242/255, green: 194/255, blue: 197/255).opacity(0.4))
                )
                
                }.listStyle(.plain)
                .scrollContentBackground(.hidden)
            
            Spacer()
            Divider()
            Text("version 1.1.0")
            Button(action:{}){
                Text("Sign Out")
                    .foregroundStyle(.pink)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(Color(red: 242/255, green: 194/255, blue: 197/255).opacity(0.4))
                    .cornerRadius(12)
            }
            .padding(.horizontal)
                
            
        }.background(.clear)
    }
}

#Preview {
    sideMenuHeaderView()
}
