
import Foundation
class StartViewModel: ObservableObject {
    @Published var inMeasure = [CustomMeasureOfMagnitude]()
    @Published var outMeasure = [CustomMeasureOfMagnitude]()
    @Published var ingredient = [Ingredient]()
//
   
//
    init() {
        getData()
    }
    
    func getData() {
        let inMeasure = RealmService.shared.getAllMeasure()
        let outMeasure = RealmService.shared.getAllMeasure()
        let ingredient = RealmService.shared.getAllIngredient()
    }
}


//class StartViewModel: ObservableObject {
//    @Published var inMeasure = CustomMeasureOfMagnitude(name: "Не выбрано")
//    @Published var outMeasure = CustomMeasureOfMagnitude(name: "Не выбрано")
//    @Published var ingredient = Ingredient(name: "не выбран", density: 0)
////    
//    @Published var measures: [CustomMeasureOfMagnitude] = []
//    @Published var packings: [CustomMeasureOfMagnitude] = []
//    @Published var ingredients: [Ingredient] = []
////    
//    init() {
//        getData()
//    }
//    
//    func getData() {
//        self.measures = CustomMeasureOfMagnitude.mockData
//        self.packings = CustomMeasureOfMagnitude.mockData
//        self.ingredients = Ingredient.mockData
//    }
//}
