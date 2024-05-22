
import Foundation

struct Ingredient: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var density: Int

    static var mockData: [Ingredient] = [
        .init(name: "Сахар", density: 1085),
        .init(name: "Вода", density: 997),
        .init(name: "Соль", density: 1085)

    ]

}
