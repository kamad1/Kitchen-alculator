//
//  IngredientViewModel.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation


class IngredientViewModel: ObservableObject {
    @Published var ingredient = [Ingredient]()
    @Published var measure = [CustomMeasureOfMagnitude]()
    
    init() {
        getData()
    }
    
    func getData() {
        let ingredient = RealmService.shared.getAllIngredient()
        let measure = RealmService.shared.getAllMeasure()
    }
    
    func addNewIngredient(ingredient: Ingredient) {
        
        let ingredient = Ingredient()
        RealmService.shared.createIngredient(ingredient)
        getData()
    }
    
    func deleteIngredient(ingredient: Ingredient) {
        RealmService.shared.deleteIngredient(ingredient)
    }
        func addNewMeasure(measure: CustomMeasureOfMagnitude) {
            let measure = CustomMeasureOfMagnitude()
            RealmService.shared.createMeasure(measure)
            getData()
        }
        
        func deleteMeasure(measure: CustomMeasureOfMagnitude) {
            RealmService.shared.deleteMeasure(measure)
        }
        
    }



//
//class IngredientViewModel: ObservableObject {
//    @Published var ingredient: [Ingredient] = []
//    @Published var measure: [CustomMeasureOfMagnitude] = []
//    
//    init() {
//        getData()
//    }
//    
//    func getData() {
//        self.ingredient = Ingredient.mockData
//        self.measure = CustomMeasureOfMagnitude.mockData
//    }
//    
//    func addNewIngredient(ingredient: Ingredient) {
//        Ingredient.mockData.append(ingredient)
//    }
//    
//    func deleteIngredient(ingredient: Ingredient) {
//        let index = self.ingredient.firstIndex {
//            ing in
//            ing.id == ingredient.id
//        }
//        self.ingredient.remove(at: index!)
//    }
//    
//    func addNewMeasure(measure: CustomMeasureOfMagnitude) {
//        CustomMeasureOfMagnitude.mockData.append(measure)
//    }
//    
//    func deleteMeasure(measure: CustomMeasureOfMagnitude) {
//        let index = self.measure.firstIndex {
//            measur in
//            measur.id == measure.id
//        }
//        self.measure.remove(at: index!)
//    }
//    
//}
