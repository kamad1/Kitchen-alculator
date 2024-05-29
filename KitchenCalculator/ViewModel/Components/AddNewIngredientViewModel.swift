

import Foundation

class AddNewIngredientViewModel: ObservableObject {
//    @Published var name: String = ""
//    @Published var density: Int?
//    
//    @Published var nameMeasur: String = ""
//    @Published var baseValue: Double?
//    @Published var isWeight : Bool = true
//    
//    func getData() {
//        let ingredient = RealmService.shared.getAllIngredient()
//        let measure = RealmService.shared.getAllMeasure()
//    }
    
//    
//    @Published var ingredient: Ingredient = .init(name: "", density: 0)
//    @Published var measure: CustomMeasureOfMagnitude = .init(name: "", isWeight: true, baseValue: 0.0)
//    
//    init() {
//        getData()
//    }
//    
//    func getData() {
//        let ingredient = RealmService.shared.getAllIngredient()
////        self.ingredient = ingredient
//        let measure = RealmService.shared.getAllMeasure()
////        self.measure = measure
//    }
    
    
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
    
//    func addIngredient(ingredient: Ingredient) {
//        
//        let ingredient = Ingredient()
//        RealmService.shared.createIngredient(ingredient)
//        getData()
//    }
//    
//        func addMeasure(measure: CustomMeasureOfMagnitude) {
//            let measure = CustomMeasureOfMagnitude()
//            RealmService.shared.createMeasure(measure)
//            getData()
//        }
    func addIngredient(name: String, density:Int) {
        
        let ingredient = Ingredient()
        RealmService.shared.createIngredient(ingredient)
        getData()
    }
    
    func addMeasure(name: String,baseValue:Double, isWeight: Bool) {
            let measure = CustomMeasureOfMagnitude()
            RealmService.shared.createMeasure(measure)
            getData()
        }
    

   
}



//import Foundation
//
//import Foundation
//
//class AddNewIngredientViewModel: ObservableObject {
//    @Published var name: String = ""
//    @Published var density: Int?
//    
//    @Published var nameMeasur: String = ""
//    @Published var baseValue: Double?
//    @Published var isWeight : Bool = true
//    
//    var ingredient: Ingredient {Ingredient(name: name, density: density ?? 0)}
//    var measur: CustomMeasureOfMagnitude {CustomMeasureOfMagnitude(name: name, isWeight: isWeight, baseValue: baseValue ?? 0)}
//    
//    init() {
//        getData()
//    }
//    
//    func getData() {
//        
//    }
//    
//    func addIngredient(_ ingred: Ingredient) {
//        Ingredient.mockData.append(ingred)
//    }
//    func addMeasure(_ measure: CustomMeasureOfMagnitude) {
//        CustomMeasureOfMagnitude.mockData.append(measure)
//    }
//}
