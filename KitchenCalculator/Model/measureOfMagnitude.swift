
import Foundation

//
struct measureOfMagnitude: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var measureValue: Bool = false
    
//    var reserchValue: Int = {
//        var result = 0
//        switch PickerModelGramm {
//        case .gramm: return result / 1000
//        case .litr: return result / 1000
//        }
//        return result
//    }()
    
}

enum PickerModelGramm: String, CaseIterable {
    case gramm = "Грамм"
    case litr = "Литр"
    
    var weightGradation: Int {
        switch self {
        case .gramm:
            1000
        case .litr:
            1000
        }
        }
    }


enum PickerModelGlass: String, CaseIterable {
    case glass = "Стакан"
    case cups = "Кружка"
    case pack = "Упаковка"
   
    var vСapacity: Int {
        switch self {
        case .glass:
            return 250
        case .cups:
            return 450
        case .pack:
            return 1000
        }
    }
   
}


