//
//  AddNewIngredientView.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import SwiftUI

struct AddNewIngredientView: View {
    @StateObject var viewModel = AddNewIngredientViewModel()

//    var action: () -> ()
    var dismissAction: () -> ()
    
    var body: some View {
        VStack {
            Text("Новый ингредиент")
                .font(.title2).bold()
            TextField("Название ингредиента", text: $viewModel.name)
                .modifier(CostumTextFieldModifire())
            TextField("Плотность продукта", value: $viewModel.density, format: .number)
                .modifier(CostumTextFieldModifire())
                .keyboardType(.numberPad)
            
            Button("Сохранить") {
                viewModel.addIngredient(viewModel.ingredient)
                dismissAction()

//                action()
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

#Preview {
   AddNewIngredientView(dismissAction: {})
}
