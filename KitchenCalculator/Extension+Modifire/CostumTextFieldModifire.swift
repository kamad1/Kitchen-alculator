//
//  CostumTextFieldModifire.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//


import SwiftUI

struct CostumTextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .padding()
            .background(.white)
            .clipShape(.rect(cornerRadius: 8))
            .shadow(radius: 1)
    }
}
