//
//  RoutineView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct RoutineView : View {
    @State private var hydration: Double = 0 // glasses of water, adjust as needed

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
                    }
                    Spacer()
                    Text("No medicaton registered")
                        .font(.system(size: 15))
                        .foregroundStyle(.gray)
                    Divider()
                    HStack{
                        Text("Add your medication reminder")
                            .padding([.top,.bottom])
                        Spacer()
                        Image(systemName: "plus.square.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
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
            
            ZStack{
                
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 420, height: 160)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Text("Hydratation")
                            .bold()
                            .font(.title2)
                        Spacer()
                        Image(systemName: "water.waves")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
                    
                    // A working Slider with a binding and range.
                    // Example range: 0 to 8 glasses, step 1.
                    Slider(value: $hydration, in: 0...8, step: 1) {
                        Text("Glasses")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("8")
                    }
                    HStack{
                        Text("You have logged \(Int(hydration)) glasses of water today. Keep it up!")
                        Spacer()
                        Image(systemName: "plus.app.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
                    
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
