//
//  AddNewIngredientViewModel.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation

import Foundation

class AddNewIngredientViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var density: Int?
    
    @Published var nameMeasur: String = ""
    @Published var baseValue: Double?
    @Published var isWeight : Bool = true
    
    var ingredient: Ingredient {Ingredient(name: name, density: density ?? 0)}
    var measur: CustomMeasureOfMagnitude {CustomMeasureOfMagnitude(name: name, isWeight: isWeight, baseValue: baseValue ?? 0)}
    
    init() {
        getData()
    }
    
    func getData() {
        
    }
    
    func addIngredient(_ ingred: Ingredient) {
        Ingredient.mockData.append(ingred)
    }
    func addMeasure(_ measure: CustomMeasureOfMagnitude) {
        CustomMeasureOfMagnitude.mockData.append(measure)
    }
}
