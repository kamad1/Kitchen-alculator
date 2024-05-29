

import SwiftUI

struct IngredientView: View {
    @StateObject var viewModel = IngredientViewModel()
    @State private var showAddIngredientView = false
    @State private var total = 0
    
    var body: some View {
        
        VStack {

            
            Section(header: Text("Ингредиенты")
                .foregroundStyle(.black)
                .font(.title3).bold()
            ) {
                List(viewModel.ingredient, id: \._id) { ingr in
                    Text("\(ingr.name): его(ее) плотность \(String(describing: ingr.density))")
                        .swipeActions() {
                            Button("Удалить") {
                                viewModel.deleteIngredient(ingredient: ingr)
                            }
                            .tint(.red)
                        }
                        .swipeActions(edge: .leading) {
                            Button("Редактировать") {
                                //TODO: Сделать редактирование
                                
                            }
                            .tint(.green)
                        }
                    
                }
                
            }

            Section(header: Text("Меры")
                .foregroundStyle(.black)
                .font(.title3).bold()
            ) {
                List(viewModel.measure, id: \._id) { meas in
                    Text("\(meas.name): объем(вес) \(Int(meas.baseValue))")
                        .swipeActions() {
                            Button("Удалить") {
                                viewModel.deleteMeasure(measure: meas)
                            }
                            .tint(.red)
                        }
                        .swipeActions(edge: .leading) {
                            Button("Редактировать") {
                                //TODO: Сделать редактирование
                                
                            }
                            .tint(.green)
                        }
                    
                }
                
                
            }
            
            
        
            
            
        }
        .overlay(alignment: .bottomTrailing, content: {
            Button {
                showAddIngredientView = true
            } label: {
                Image(.button).renderingMode(.original)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(.circle)
                    .foregroundColor(.blue)
            }
            .offset(x: -10, y: -57)
        })
        .overlay {
            AddNewIngredientView {
                showAddIngredientView = false
                viewModel.ingredient = RealmService.shared.getAllIngredient()
                viewModel.measure = RealmService.shared.getAllMeasure()
            }
            .offset(y: showAddIngredientView ? 0 : 1000)
        }
        .animation(.easeInOut, value: showAddIngredientView)
    }
}

#Preview {
    IngredientView()
}



//
//
//import SwiftUI
//
//struct IngredientView: View {
//    @StateObject var viewModel = IngredientViewModel()
//    @State private var showAddIngredientView = false
//    @State private var total = 0
//    
//    var body: some View {
//        
//        VStack {
//
//            
//            Section(header: Text("Ингредиенты")
//                .foregroundStyle(.black)
//                .font(.title3).bold()
//            ) {
//                List(viewModel.ingredient) { ingr in
//                    Text("\(ingr.name): его плотность \(ingr.density)")
//                        .swipeActions() {
//                            Button("Удалить") {
//                                viewModel.deleteIngredient(ingredient: ingr)
//                            }
//                            .tint(.red)
//                        }
//                        .swipeActions(edge: .leading) {
//                            Button("Редактировать") {
//                                //TODO: Сделать редактирование
//                                
//                            }
//                            .tint(.green)
//                        }
//                    
//                }
//                
//            }
//
//            Section(header: Text("Меры")
//                .foregroundStyle(.black)
//                .font(.title3).bold()
//            ) {
//                List(viewModel.measure) { meas in
//                    Text("\(meas.name): его плотность \(Int(meas.baseValue))")
//                        .swipeActions() {
//                            Button("Удалить") {
//                                viewModel.deleteMeasure(measure: meas)
//                            }
//                            .tint(.red)
//                        }
//                        .swipeActions(edge: .leading) {
//                            Button("Редактировать") {
//                                //TODO: Сделать редактирование
//                                
//                            }
//                            .tint(.green)
//                        }
//                    
//                }
//                
//                
//            }
//            
//            
//        
//            
//            
//        }
//        .overlay(alignment: .bottomTrailing, content: {
//            Button {
//                showAddIngredientView = true
//            } label: {
//                Image(.button).renderingMode(.original)
//                    .resizable()
//                    .frame(width: 70, height: 70)
//                    .clipShape(.circle)
//                    .foregroundColor(.blue)
//            }
//            .offset(x: -10, y: -57)
//        })
//        .overlay {
//            AddNewIngredientView {
//                showAddIngredientView = false
//                viewModel.ingredient = Ingredient.mockData
//                viewModel.measure = CustomMeasureOfMagnitude.mockData
//            }
//            .offset(y: showAddIngredientView ? 0 : 700)
//        }
//        .animation(.easeInOut, value: showAddIngredientView)
//    }
//}
//
//#Preview {
//    IngredientView()
//}
