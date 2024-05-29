//
//  AddNewIngredientView.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import SwiftUI

struct AddNewIngredientView: View {
    @StateObject var viewModel = AddNewIngredientViewModel()
    @State var name: String = ""
    @State var density: Int?
    
    @State var nameMeasur: String = ""
    @State var baseValue: Double?
    @State var isWeight : Bool = true
    
    @State var isTrue: Bool = true

    var dismissAction: () -> ()
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                Text("Новый ингредиент")
                    .font(.title2).bold()
                TextField("Название ингредиента", text: $name)
                    .modifier(CostumTextFieldModifire())

                TextField("Плотность продукта", value: $density, format: .number)
                    .modifier(CostumTextFieldModifire())
                    .keyboardType(.numberPad)
                
                Button("Сохранить") {
// TODO: сделать добавление нового игред
                    viewModel.addIngredient(name: name, density: density ?? 0)
                    dismissAction()
                    
                    name = ""
                    density = nil
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(.purple)
                .clipShape(.rect(cornerRadius: 8))
                .foregroundColor(.white)
                .font(.title3)
            }
            .padding()
            .background(.white)
            .clipShape(.rect(cornerRadius: 24))
            .shadow(radius: 3)
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    dismissAction()
                }, label: {
                    Image(systemName: "xmark")
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                        .clipShape(.circle)
                        .shadow(color: .gray, radius: 12)
                        .offset(x: 10, y: -10)
                })
            }
            .padding(30)
            
            VStack {
                Text("Новая Мера")
                    .font(.title2).bold()
                TextField("Название меры", text: $nameMeasur)
                    .modifier(CostumTextFieldModifire())
                TextField("V-меры", value: $baseValue, format: .number)
                    .modifier(CostumTextFieldModifire())
                    .keyboardType(.numberPad)
                
                Toggle(isOn: $isWeight, label: {
                        Text("Вес или Литры")
                })
                
                Button("Сохранить") {
                    // TODO: сделать добавление нового игред
                    viewModel.addMeasure(name: nameMeasur, baseValue: baseValue ?? 0.0, isWeight: isWeight)

                    dismissAction()
                    name = ""
                    baseValue = nil
                    
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(.purple)
                .clipShape(.rect(cornerRadius: 8))
                .foregroundColor(.white)
                .font(.title3)
            }
            .padding()
            .background(.white)
            .clipShape(.rect(cornerRadius: 24))
            .shadow(radius: 3)
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    dismissAction()
                }, label: {
                    Image(systemName: "xmark")
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                        .clipShape(.circle)
                        .shadow(color: .gray, radius: 12)
                        .offset(x: 10, y: -10)
                })
            }
            .padding(30)
        }
    }
}

#Preview {
   AddNewIngredientView(dismissAction: {})
}



//import SwiftUI
//
//struct AddNewIngredientView: View {
//    @StateObject var viewModel = AddNewIngredientViewModel()
//    @State var isTrue: Bool = true
//
//    var dismissAction: () -> ()
//    
//    var body: some View {
//        VStack(spacing: 0) {
//            VStack {
//                Text("Новый ингредиент")
//                    .font(.title2).bold()
//                TextField("Название ингредиента", text: $viewModel.name)
//                    .modifier(CostumTextFieldModifire())
//                TextField("Плотность продукта", value: $viewModel.density, format: .number)
//                    .modifier(CostumTextFieldModifire())
//                    .keyboardType(.numberPad)
//                
//                Button("Сохранить") {
//                    viewModel.addIngredient(viewModel.ingredient)
//                    dismissAction()
//                    
//                    
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: 55)
//                .background(.purple)
//                .clipShape(.rect(cornerRadius: 8))
//                .foregroundColor(.white)
//                .font(.title3)
//            }
//            .padding()
//            .background(.white)
//            .clipShape(.rect(cornerRadius: 24))
//            .shadow(radius: 3)
//            .overlay(alignment: .topTrailing) {
//                Button(action: {
//                    dismissAction()
//                }, label: {
//                    Image(systemName: "xmark")
//                        .padding()
//                        .background(.red)
//                        .foregroundColor(.white)
//                        .clipShape(.circle)
//                        .shadow(color: .gray, radius: 12)
//                        .offset(x: 10, y: -10)
//                })
//            }
//            .padding(30)
//            
//            VStack {
//                Text("Новая Мера")
//                    .font(.title2).bold()
//                TextField("Название меры", text: $viewModel.nameMeasur)
//                    .modifier(CostumTextFieldModifire())
//                TextField("V-меры", value: $viewModel.baseValue, format: .number)
//                    .modifier(CostumTextFieldModifire())
//                    .keyboardType(.numberPad)
//                
//                Toggle(isOn: $viewModel.isWeight, label: {
//                    Text("Весл или Литры")
//                })
//                
//                Button("Сохранить") {
//                    viewModel.addMeasure(viewModel.measur)
//                    dismissAction()
//                    
//                    
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: 55)
//                .background(.purple)
//                .clipShape(.rect(cornerRadius: 8))
//                .foregroundColor(.white)
//                .font(.title3)
//            }
//            .padding()
//            .background(.white)
//            .clipShape(.rect(cornerRadius: 24))
//            .shadow(radius: 3)
//            .overlay(alignment: .topTrailing) {
//                Button(action: {
//                    dismissAction()
//                }, label: {
//                    Image(systemName: "xmark")
//                        .padding()
//                        .background(.red)
//                        .foregroundColor(.white)
//                        .clipShape(.circle)
//                        .shadow(color: .gray, radius: 12)
//                        .offset(x: 10, y: -10)
//                })
//            }
//            .padding(30)
//        }
//    }
//}
//
//#Preview {
//   AddNewIngredientView(dismissAction: {})
//}
