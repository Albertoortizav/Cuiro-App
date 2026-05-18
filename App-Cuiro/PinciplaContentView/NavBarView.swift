//
//  NavBarView.swift
//  App-Cuiro
//
//  Created by Alberto Ortiz zavaleta on 17/05/26.
//

import SwiftUI

struct NavBarView: View {
    enum Tab: Hashable {
        case mensajes
        case rutina
        case inicio
        case foro
        case perfil
    }

    @State private var selection: Tab = .inicio

    var body: some View {
        TabView(selection: $selection) {

            // Mensajes
            ShellView {
                PlaceholderContent(title: "Mensajes")
            }
            .tabItem {
                Image(systemName: "envelope.fill")
                Text("Mensajes")
            }
            .tag(Tab.mensajes)

            // Rutina
            ShellView {
                RoutineView()
            }
            .tabItem {
                Image(systemName: "clock")
                Text("Rutina")
            }
            .tag(Tab.rutina)

            // Inicio
            ShellView {
                PlaceholderContent(title: "Inicio")
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Inicio")
            }
            .tag(Tab.inicio)

            // Foro
            ShellView {
                PlaceholderContent(title: "Foro")
            }
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Foro")
            }
            .tag(Tab.foro)

            // Perfil
            ShellView {
                PrincipalContentView()
            }
            .tabItem {
                Image(systemName: "person.circle")
                Text("Perfil")
            }
            .tag(Tab.perfil)
        }
    }
}

// Vista de encabezado que se mostrará siempre arriba
private struct HeaderView: View {
    var body: some View {
        ZStack{
            HStack {
                Button(action: {}) {
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
                    .frame(width: 70)
            }
            .padding()
        }
    }
}

// Contenedor común que fija el header arriba y coloca el contenido debajo
private struct ShellView<Content: View>: View {
    @ViewBuilder var content: Content

    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            // El contenido específico de cada pestaña
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(Color(red: 227/255, green: 83/255, blue: 123/255, opacity: 0.4))
        
    }
}

// Contenido placeholder reutilizable (solo el cuerpo, sin header)
private struct PlaceholderContent: View {
    let title: String
    var body: some View {
        VStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding()
    }
}

#Preview
{
    NavBarView()
}
