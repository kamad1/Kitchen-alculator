
import Foundation


enum PickerModelGramm: String, CaseIterable {
    case gramm = "Грамм"
   case kg = "КГ"
    case ton = "Тонн"
    
    var weightGradation: Int {
        switch self {
        case .gramm:
            return 1
        case .kg:
            return 1000
        case .ton:
            return 1000000
        }
    }
}

enum PickerModelGlass: String, CaseIterable {
    case glass = "Стакан"
    case cups = "Кружка"
    case train = "Вагон"
   
    var vСapacity: Int {
        switch self {
        case .glass:
            return 250
        case .cups:
            return 450
        case .train:
            return 10000
        }
    }
   
}
enum PickerModelBulkSolids: String, CaseIterable {
    case sugar = "Сахар"
    case flour = "Мука"
   case cereal = "Крупа"
}



