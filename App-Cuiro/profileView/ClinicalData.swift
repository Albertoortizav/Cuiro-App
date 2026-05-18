//
//  ClinicalData.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct ClinicalData: View {
    var body: some View {
        @State var weight:String = ""
        VStack(alignment:.leading, spacing: 20){
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
                
            }
            Text("Clinical Data")
                .bold()
                .font(.title)
                .padding(.leading,40)
            VStack{
                Text("current weight (kg)")
                TextField("",text: $weight)
                    .background(Color(.systemGray4))
                    .cornerRadius(50)
                    .frame(width: 184, height: 57)
                    .font(.largeTitle)
                Text("Height (cm)")
                TextField("",text: $weight)
                    .background(Color(.systemGray4))
                    .cornerRadius(50)
                    .frame(width: 184, height: 57)
                    .font(.largeTitle)
                Text("Chemo Type")
                TextField("",text: $weight)
                    .background(Color(.systemGray4))
                    .cornerRadius(50)
                    .frame(width: 184, height: 57)
                    .font(.largeTitle)
                Text("current Cycle")
                TextField("",text: $weight)
                    .background(Color(.systemGray4))
                    .cornerRadius(50)
                    .frame(width: 184, height: 57)
                    .font(.largeTitle)
            }.padding()
            TextField("",text: $weight)
                .background(Color(.systemGray4))
                .cornerRadius(50)
                .frame(maxWidth: .infinity, maxHeight: 61)
                .font(.largeTitle)
            Spacer()
              
            
        }.padding()
    }
}

#Preview {
    ClinicalData()
}
