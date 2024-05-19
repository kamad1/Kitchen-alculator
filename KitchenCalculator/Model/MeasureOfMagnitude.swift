
import Foundation

struct MeasureOfMagnitude: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var isWeight: Bool = false
    var baseValue: Double = 0.0
    
    static let measures: [MeasureOfMagnitude] = [
        .init(name: "Килограмм", isWeight: true, baseValue: 1),
        .init(name: "Грамм", isWeight: true, baseValue: 1000),
        .init(name: "Литр", isWeight: false, baseValue: 1),
        .init(name: "Миллилитр", isWeight: false, baseValue: 1000)
    ]
}



