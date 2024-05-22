
import Foundation

class StartViewModel: ObservableObject {
    @Published var inMeasure = MeasureOfMagnitude(name: "Не выбрано")
    @Published var outMeasure = Packing(name: "Не выбрано")
    @Published var ingredient = Ingredient(name: "не выбран", density: 0)
    
    @Published var measures: [MeasureOfMagnitude] = []
    @Published var packings: [Packing] = []
    @Published var ingredients: [Ingredient] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.measures = MeasureOfMagnitude.measures
        self.packings = Packing.pakings
        self.ingredients = Ingredient.mockData
    }
}
