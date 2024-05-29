
import Foundation
import RealmSwift

class Ingredient: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String = ""
    @Persisted var density: Int?
    
    convenience init(name: String, density: Int) {
        self.init()
        self.name = name
        self.density = density
    }

//    static var mockData: [Ingredient] = [
//        .init(name: "Сахар", density: 1085),
//        .init(name: "Вода", density: 997),
//        .init(name: "Соль", density: 1085)
//
//    ]

}

//struct Ingredient: Identifiable, Hashable {
//    var id = UUID().uuidString
//    var name: String
//    var density: Int
//
//    static var mockData: [Ingredient] = [
//        .init(name: "Сахар", density: 1085),
//        .init(name: "Вода", density: 997),
//        .init(name: "Соль", density: 1085)
//
//    ]
//
//}
