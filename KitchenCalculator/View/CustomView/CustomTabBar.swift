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
        .onAppear {print(RealmService.shared.getUrl())}
        
        //TODO: ссылка на реалм
        /*file:///Users/jedi/Library/Developer/Xcode/UserData/Previews/Simulator%20Devices/B9103A0C-4AB7-42AF-B51F-282397499706/data/Containers/Data/Application/C1EEE630-5240-4EB9-A9DA-0DE67AD4CE1B/Documents/default.realm
         */
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

//            StartView(selectedMeasure: CustomMeasureOfMagnitude(), selectedPacking: CustomMeasureOfMagnitude())
