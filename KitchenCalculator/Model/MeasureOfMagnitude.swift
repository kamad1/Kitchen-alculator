
import Foundation

struct MeasureOfMagnitude: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var isWeight: Bool = false
    var baseValue: Double = 0.0
    
    static let measures: [MeasureOfMagnitude] = [
        .init(name: "КГ", isWeight: true, baseValue: 1),
        .init(name: "Г", isWeight: true, baseValue: 1000),
        .init(name: "Л", isWeight: false, baseValue: 1),
        .init(name: "МЛ", isWeight: false, baseValue: 1000)
    ]
}



