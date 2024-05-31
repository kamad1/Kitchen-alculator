////
////  ChangePosition.swift
////  WaiterApp
////
////  Created by Влад Мади on 23.05.2024.
////
//
//import SwiftUI
//
//struct ChangePositionSheet: View {
////    var dismissAction: () -> ()
////    var action: ()->()
////    @Binding var newCount: Int
//    
//    var body: some View {
////        VStack {
////            Text("Новый ингредиент")
////                .font(.title2).bold()
////            TextField("Название ингредиента", text: $name)
////                .modifier(CostumTextFieldModifire())
////
////            TextField("Плотность продукта", value: $density, format: .number)
////                .modifier(CostumTextFieldModifire())
////                .keyboardType(.numberPad)
////            
////            Button("Сохранить") {
////                viewModel.addIngredient(name: name, density: density ?? 0)
////                dismissAction()
////                
////                name = ""
////                density = nil
////                
////            }
////            .frame(maxWidth: .infinity)
////            .frame(height: 55)
////            .background(.purple)
////            .clipShape(.rect(cornerRadius: 8))
////            .foregroundColor(.white)
////            .font(.title3)
////        }
////        .padding()
////        .background(.white)
////        .clipShape(.rect(cornerRadius: 24))
////        .shadow(radius: 3)
////        .overlay(alignment: .topTrailing) {
////            Button(action: {
////                dismissAction()
////            }, label: {
////                Image(systemName: "xmark")
////                    .padding()
////                    .background(.red)
////                    .foregroundColor(.white)
////                    .clipShape(.circle)
////                    .shadow(color: .gray, radius: 12)
////                    .offset(x: 10, y: -10)
////            })
////        }
////        .padding(.horizontal, 30)
//
//    }
//}
//
////#Preview {
////    ChangePositionSheet(dismissAction: (), action: (), newCount: <#T##Binding<Int>#>)
////}
//
//
