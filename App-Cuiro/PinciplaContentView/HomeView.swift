//
//  HomeView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 24/05/26.
//

import SwiftUI

struct HomeView: View {
    
    enum informationRegistration: Hashable, CaseIterable {
        case ClinicalData
        case Effects
        case Medications
    }
    enum secondinformationRegistration:Hashable,CaseIterable {
        case hydration
        case VitalSigns
        case HealthReport
    }
    enum thirdinformationRegistration:Hashable,CaseIterable {
        case information
        case chemotherapy
        case nutrition
    }
    enum fourthinformationRegistration:Hashable,CaseIterable {
        case exercise
        case love
    
    }


   
    var body: some View {
        ScrollView{
            VStack{
                VStack(spacing: 10){
                    HomeViewSearch()
                    ContentView()
                }
                
            }.padding()
        }
    }
}

private struct HomeViewSearch:View {
    @State var text = ""
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 357, height: 50)
                .foregroundStyle(.white)
                .cornerRadius(5)
                .shadow(radius: 10)
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Need help?",text:$text )
            }.padding()
        }  .frame(width: 357, height: 50)
    }
}
private struct ContentView:View {
    var selection: HomeView.informationRegistration = .ClinicalData

    var body: some View {
        VStack(alignment: .center){
            Spacer()
            HStack{
                Text("Information registration")
                Spacer()
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 300)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack{
                    Spacer()
                    HStack {
                        Spacer()
                        ForEach(HomeView.informationRegistration.allCases, id: \.self) { item in
                            elements(for: item)
                                .font(.title3)
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        ForEach(HomeView.secondinformationRegistration.allCases, id: \.self) { item in
                            secondElements(secondSelection: item)
                                .font(.title3)
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                }
            }    .frame(width: 357, height: 300)
            HStack{
                Text("Recomendations about...")
                Spacer()
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 357, height: 300)
                    .cornerRadius(21)
                    .shadow(radius: 5)
                VStack{
                    Spacer()
                    HStack {
                        Spacer()
                        ForEach(HomeView.thirdinformationRegistration.allCases, id: \.self) { item in
                            thirdElements(thirdSelection: item)
                                .font(.title3)
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        ForEach(HomeView.fourthinformationRegistration.allCases, id: \.self) { item in
                            fourthElements(fourthSelection: item)
                                .font(.title3)
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                }
            }    .frame(width: 357, height: 300)
            
        }.frame(width: 357)
    }
    
    @ViewBuilder
    func elements(for selection: HomeView.informationRegistration) -> some View {
        switch selection {
        case .ClinicalData:
            VStack{
                Image(systemName: "heart.text.clipboard")
                Text("Clinical Data")}
        case .Effects:
            VStack{
                Image(systemName: "waveform.path.ecg.rectangle")
                Text("Effects")}
        case .Medications:
            VStack{
                Image(systemName: "pills.fill")
                Text("Medications")}
        }
    }
    @ViewBuilder
    func secondElements(secondSelection:HomeView.secondinformationRegistration ) -> some View{
        switch secondSelection {
            
        case .hydration:
            VStack{
                Image(systemName: "water.waves")
                Text("Hydration")}
        case .VitalSigns:
            VStack{
                Image(systemName: "stethoscope")
                Text("Vital Signs")}
        case .HealthReport:
            VStack{
                Image(systemName: "doc.text.magnifyingglass")
                Text("Health Report")}
        }
    }
    @ViewBuilder
    func thirdElements(thirdSelection:HomeView.thirdinformationRegistration ) -> some View{
        switch thirdSelection {
            
        case .information:
            VStack{
                Image(systemName: "water.waves")
                Text("Hydration")}
        case .chemotherapy:
            VStack{
                Image(systemName: "stethoscope")
                Text("Vital Signs")}
        case .nutrition:
            VStack{
                Image(systemName: "doc.text.magnifyingglass")
                Text("Health Report")}
        }
    }
    @ViewBuilder
    func fourthElements(fourthSelection:HomeView.fourthinformationRegistration ) -> some View{
        switch fourthSelection {
            
        case .exercise:
            VStack{
                Image(systemName: "water.waves")
                Text("Hydration")}
        case .love:
            VStack{
                Image(systemName: "stethoscope")
                Text("Vital Signs")}
        }
    }
}



#Preview {
    HomeView()
}

