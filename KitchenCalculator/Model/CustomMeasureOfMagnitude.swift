
import Foundation
import RealmSwift

class CustomMeasureOfMagnitude: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String = ""
    @Persisted var isWeight: Bool = false
    @Persisted var baseValue: Double = 0.0
    
//    static var mockData: [CustomMeasureOfMagnitude] = [
//        .init(name: "Килограмм", isWeight: true, baseValue: 1),
//        .init(name: "Грамм", isWeight: true, baseValue: 1000),
//        .init(name: "Литр", isWeight: false, baseValue: 1),
//        .init(name: "Миллилитр", isWeight: false, baseValue: 1000)
//    ]
}
//
//struct CustomMeasureOfMagnitude: Identifiable, Hashable {
//    var id = UUID().uuidString
//    var name: String
//    var isWeight: Bool = false
//    var baseValue: Double = 0.0
//
//    static var mockData: [CustomMeasureOfMagnitude] = [
//        .init(name: "Килограмм", isWeight: true, baseValue: 1),
//        .init(name: "Грамм", isWeight: true, baseValue: 1000),
//        .init(name: "Литр", isWeight: false, baseValue: 1),
//        .init(name: "Миллилитр", isWeight: false, baseValue: 1000)
//    ]
//}



