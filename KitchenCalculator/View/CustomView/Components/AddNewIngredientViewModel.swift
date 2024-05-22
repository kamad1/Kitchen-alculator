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
    
    var ingredient: Ingredient {Ingredient(name: name, density: density ?? 0)}
    
    init() {
        getData()
    }
    
    func getData() {
        
    }
}
