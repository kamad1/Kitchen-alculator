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
        self.ingredient = ingredient
        let measure = RealmService.shared.getAllMeasure()
        self.measure = measure
    }
    
    func addNewIngredient(ingredient: Ingredient) {
        
        let ingredient = Ingredient()
        RealmService.shared.createIngredient(ingredient)
        getData()
    }
    
    func deleteIngredient(ingredient: Ingredient) {
        DispatchQueue.main.async {
            RealmService.shared.deleteIngredient(ingredient)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
                self.getData()
            }
        }
    }
        func addNewMeasure(measure: CustomMeasureOfMagnitude) {
            let measure = CustomMeasureOfMagnitude()
            RealmService.shared.createMeasure(measure)
            getData()
        }
        
        func deleteMeasure(measure: CustomMeasureOfMagnitude) {
            DispatchQueue.main.async {
                RealmService.shared.deleteMeasure(measure)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
                    self.getData()
                }
            }
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
