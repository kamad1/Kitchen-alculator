//
//  CustomTabBar.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import SwiftUI

struct CustomTabBar: View {
    @State private var activeTab: Tab = .menu
    
    var body: some View {
        TabView(selection: $activeTab) {
            
            StartView()
                .tag(Tab.menu)
                .toolbar(.hidden, for: .tabBar)
                

            IngredientView()
                .tag(Tab.ingredient)
                .toolbar(.hidden, for: .tabBar)
                
        }
        .overlay(alignment: .bottom) {
            CustomTabView()
        }
        .ignoresSafeArea()
        .animation(.interpolatingSpring, value: activeTab)
    }
    
    
    @ViewBuilder func CustomTabView() -> some View {
        HStack(spacing: 80) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                VStack {
                    Image(systemName: tab.imageSystemName)
                        .font(.largeTitle)
                        .padding(.top)
                
                    Text(tab.rawValue)
                        .font(.caption)
                        .padding(.bottom)
                }
                .foregroundStyle(activeTab == tab ? .white : .gray)
                .onTapGesture {
                    activeTab = tab
                }
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 70)
        .background(.purple)
        .clipShape(.capsule)
        .padding()
    }
}

#Preview {
    CustomTabBar()
}
