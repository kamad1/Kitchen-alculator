//
//  IngredientViewModel.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation

class IngredientViewModel: ObservableObject {
    @Published var ingredient: [Ingredient] = []
    @Published var measure: [CustomMeasureOfMagnitude] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.ingredient = Ingredient.mockData
        self.measure = CustomMeasureOfMagnitude.mockData
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
    
    func addNewMeasure(measure: CustomMeasureOfMagnitude) {
        CustomMeasureOfMagnitude.mockData.append(measure)
    }
    
    func deleteMeasure(measure: CustomMeasureOfMagnitude) {
        let index = self.measure.firstIndex {
            measur in
            measur.id == measure.id
        }
        self.measure.remove(at: index!)
    }
    
}
