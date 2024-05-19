//
//  Ingridient.swift
//  KitchenCalculator
//
//  Created by Jedi on 19.05.2024.
//

import Foundation

struct Ingridient: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var density: Int

    static var mockData: [Ingridient] = [
        .init(name: "Сахар", density: 1085),
        .init(name: "Вода", density: 997),
        .init(name: "Соль", density: 1085)

    ]

}

enum PickerModelBulkSolids: String, CaseIterable {
    case sugar = "Сахар"
    case flour = "Мука"
   case cereal = "Соль"
}


