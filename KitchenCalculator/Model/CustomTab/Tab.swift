//
//  Tab.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation

enum Tab: String, CaseIterable {
    case menu = "Меню"
    case ingredient = "Ингредиенты"
    
    var imageSystemName: String {
        switch self {
        case .menu:
            "menucard"
        case .ingredient:
            "rectangle.and.pencil.and.ellipsis"
        }
    }
}
