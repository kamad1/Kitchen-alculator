//
//  ChangePosition.swift
//  WaiterApp
//
//  Created by Влад Мади on 23.05.2024.
//

import SwiftUI

struct ChangePositionSheet: View {
    var dismissAction: () -> ()
    var action: ()->()
    @Binding var newCount: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Изменить плотность")
                .font(.title2).bold()
            TextField("Плотность", value: $newCount, format: .number)
                .modifier(CostumTextFieldModifire())
            Button("Сохранить") {
                action()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 8))
            .foregroundStyle(.white)
            .font(.title3)
        }
        .padding()
        .background(.white)
        .clipShape(.rect(cornerRadius: 24))
        .shadow(radius: 3)
        .overlay(alignment: .topTrailing) {
            Button {
                dismissAction()
            } label: {
                Image(systemName: "xmark")
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(.circle)
                    .shadow(color: .blue, radius: 12)
                    .offset(x: 10, y: -10)
                    
            }
        }
        .padding(30)
        
    }
}

//#Preview {
//    ChangePositionSheet(dismissAction: (), action: (), newCount: <#T##Binding<Int>#>)
//}


