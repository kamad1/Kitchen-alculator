//
//  Packing.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation
struct Packing: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var isWeight: Bool = false
    var baseValue: Double = 0.0
    
    static let pakings: [Packing] = [
        .init(name: "Стакан", isWeight: false, baseValue: 450),
        .init(name: "Пачка", isWeight: true, baseValue: 1),

    ]
}
