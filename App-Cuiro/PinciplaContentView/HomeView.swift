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
   
    var body: some View {
        VStack{
            VStack(spacing: 10){
                HomeViewSearch()
                ContentView()
            }
            
        }.padding()
    }
}

private struct HomeViewSearch:View {
    @State var text = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField("Need help?",text:$text )
        }

    }
}
private struct ContentView:View {
    var selection: HomeView.informationRegistration = .ClinicalData

    var body: some View {
        VStack{
            HStack{
                Text("Information registration")
                Spacer()
            }
            ZStack{
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 420, height: 300)
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
            }    .frame(width: 420, height: 300)
        }
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
}



#Preview {
    HomeView()
}

