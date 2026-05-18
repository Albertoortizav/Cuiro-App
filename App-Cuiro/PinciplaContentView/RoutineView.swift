//
//  RoutineView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct RoutineView : View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 420, height: 200)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack(alignment: .leading){
                    HStack{
                        Text("Medications")
                            .bold()
                            .font(.title2)
                        Spacer()
                        Image(systemName: "syringe.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }.padding()
                    Spacer()
                    HStack{
                            Text("No medicaton registered")
                                .font(.system(size: 15))
                                .foregroundStyle(.gray)
                    }.padding()
                    Spacer()
                        Divider()
                        HStack{
                            Text("Add your medication reminder")
                            Spacer()
                            Image(systemName: "plus.square.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                        }.padding()
                    }.padding()
               
                    
                }.padding()
                .frame(width: 420, height: 200)
            ZStack{
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 420, height: 160)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Text("Medications")
                            .bold()
                            .font(.title2)
                        Spacer()
                        Image(systemName: "shoe.front.lift.45.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    }
                    Spacer()
                    Text("today you have taken 0 steps. keep it up")
                      
                    
                    }.padding()
               Spacer()
                }.padding()
                .frame(width: 420, height: 160)

            }
        
        }
    }


#Preview {
    RoutineView()
}
