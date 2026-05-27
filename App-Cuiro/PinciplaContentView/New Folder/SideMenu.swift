//
//  SideMenu.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 26/05/26.
//

import SwiftUI

struct SideMenu: View {
    @Binding var showMenu: Bool
    var body: some View {
        ZStack{
            if showMenu {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture{showMenu.toggle()}
                HStack{
                    ZStack{
                        UnevenRoundedRectangle(bottomTrailingRadius: 15, topTrailingRadius: 15)
                            .foregroundStyle(.white)
                            .frame(width: 290, height: 800)
                            
                        VStack(alignment:.leading, spacing: 10){
                            sideMenuHeaderView()
                                .padding()
                            Spacer()
                        }
                        .frame(width:290,height: 800)
                        .cornerRadius(10)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SideMenu(showMenu: .constant(true))
}
