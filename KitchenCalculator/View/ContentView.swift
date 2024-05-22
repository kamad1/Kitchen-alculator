//
//  ContentView.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView { StartView() }
                .tabItem { Label("Меню", systemImage: "menucard") }
            
            NavigationView { IngridientView() }
                .tabItem { Label("Ингридиенты", systemImage: "menucard") }
        }
    }
}

#Preview {
    ContentView()
}
