
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

enum PickerModelMeasureValue: String, CaseIterable {
    case gramm = "Грамм"
    case mLitr = "Милилитр"
    
  
    }


enum PickerModelMeasureValue2: String, CaseIterable {
    case glass = "Стакан"
    case cups = "Кружка"
    case pack = "Упаковка"
   
   
    
   
}


