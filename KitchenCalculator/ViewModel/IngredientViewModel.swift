//
//  IngredientViewModel.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation

class IngredientViewModel: ObservableObject {
    @Published var ingredient: [Ingredient] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.ingredient = Ingredient.mockData
    }
    func addNewIngredient(ingredient: Ingredient) {
        Ingredient.mockData.append(ingredient)
    }
}
