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
    
    func deleteIngredient(ingredient: Ingredient) {
        let index = self.ingredient.firstIndex {
            ing in
            ing.id == ingredient.id
        }
        self.ingredient.remove(at: index!)
    }
}
