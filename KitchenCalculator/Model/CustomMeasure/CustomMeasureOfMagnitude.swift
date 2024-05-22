//
//  CustomMeasureOfMagnitude.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import Foundation

enum CustomMeasureOfMagnitude: String, CaseIterable, Identifiable {
    case kg = "Килограмм"
    case gramm = "Грамм"
    case litr = "Литр"
    case miliLitr = "Миллилитр"
    
    var id: String { rawValue }
    
    var isWeight: Bool {
        switch self {
        case .kg:
            true
        case .gramm:
            true
        case .litr:
            false
        case .miliLitr:
            false
        }
    }
    
    var baseValue: Double {
        switch self {
        case .kg:
            1
        case .gramm:
            1000
        case .litr:
            1
        case .miliLitr:
            1000
        }
    }
}

