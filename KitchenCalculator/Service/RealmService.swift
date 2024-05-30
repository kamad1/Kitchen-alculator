//
//  RealmService.swift
//  KitchenCalculator
//
//  Created by Jedi on 28.05.2024.
//

import Foundation
import RealmSwift

class RealmService {
    static let shared = RealmService(); private init() {}
    private let realm = try! Realm()
  
    
    func getUrl() -> String {
        guard let url = realm.configuration.fileURL else { return "REALM not found" }
        return url.absoluteString
    }
    
    //MARK: - CRUD
    //MARK: Create
    func createMeasure(_ object: Object) {
        try! realm.write { realm.add(object) }
    }
    
    func createIngredient(_ object: Object) {
        try! realm.write { realm.add(object) }
    }
    
    //MARK: Retrieve (Read)
    func getAllMeasure() -> [CustomMeasureOfMagnitude] {
        let measureList = realm.objects(CustomMeasureOfMagnitude.self)
        return Array(measureList)
    }
    
    func getMeasureBy(_ id: ObjectId) -> CustomMeasureOfMagnitude? {
        return realm.object(ofType: CustomMeasureOfMagnitude.self,
                            forPrimaryKey: id)
    }
    
    func getAllIngredient() -> [Ingredient] {
        let ingredientList = realm.objects(Ingredient.self)
        return Array(ingredientList)
    }
    
    func getIngredientBy(_ id: ObjectId) -> Ingredient? {
        return realm.object(ofType: Ingredient.self,
                            forPrimaryKey: id)
    }
    
    //MARK: Update
    func updateMeasure(byID id: ObjectId,
                      newName: String? = nil,
                      newIsWeight: Bool? = nil,
                      newBaseValue: Double? = nil) {
        guard let measure = getMeasureBy(id) else { return }
        
        try! realm.write {
            if let newName { measure.name = newName }
            if let newIsWeight { measure.isWeight = newIsWeight }
            if let newBaseValue { measure.baseValue = newBaseValue }
        }
    }
    
    func updateIngredient(byID id: ObjectId,
                      newName: String? = nil,
                      newDensity: Int? = nil) {
        guard let ingredient = getIngredientBy(id) else { return }
        
        try! realm.write {
            if let newName { ingredient.name = newName }
            if let newDensity { ingredient.density = newDensity }
        }
    }
    
    //MARK: Delete
    func deleteMeasure(_ measure: CustomMeasureOfMagnitude) {
        try! realm.write {
            realm.delete(measure)
        }
    }
    
    func deleteIngredient(_ ingredient: Ingredient) {
        try! realm.write {
            realm.delete(ingredient)
        }
    }
    
    func clearRealm() {
        try! realm.write {
            realm.deleteAll()
        }
    }
}

