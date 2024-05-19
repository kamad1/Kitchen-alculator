
import Foundation

//
struct measureOfMagnitude: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var measureValue: Bool = false
    
    var reserchValue: Int = {
        var e = 0
        return e
    }()

}

enum PickerModelGramm: String, CaseIterable {
    case gramm = "Грамм"
    case mLitr = "Милилитр"
    
    var weightGradation: Int {
        switch self {
        case .gramm:
            1
        case .mLitr:
            1
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


