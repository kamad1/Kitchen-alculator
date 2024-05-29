

import Foundation

class AddNewIngredientViewModel: ObservableObject {
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
    
    func addIngredient(name: String, density:Int?) {
        guard let density else { return }
        guard !name.isEmpty else { return }
        let ingredient = Ingredient(name: name, density: density)
        RealmService.shared.createIngredient(ingredient)
        getData()
    }
    
    func addMeasure(name: String,baseValue:Double, isWeight: Bool) {
            let measure = CustomMeasureOfMagnitude(name: name, isWeight: isWeight, baseValue: baseValue)
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
