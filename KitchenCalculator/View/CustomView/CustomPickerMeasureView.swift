//
//  CustomPickerView.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

import SwiftUI

struct CustomPickerMeasureView: View {
    @Binding var selectedMeasure: CustomMeasureOfMagnitude
    @State private var showList = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(selectedMeasure.rawValue)")
                Image(systemName: "triangle")
                    .rotationEffect(.degrees(180))
                    .onTapGesture {
                        showList.toggle()
                }
            }
            .frame(width: 130, height: 60)
            .background {
                Image(.ves2)
                    .resizable()
                    .scaledToFill()
            }
            .accentColor(.black).bold()
            .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
            .padding(2)
            .background(.white)
            .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
            .border(.mint)
            .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
            .overlay(alignment: .bottomLeading) {
                if showList {
                    List(CustomMeasureOfMagnitude.allCases) { measure in
                        Text("\(measure.rawValue)")
                            .onTapGesture {
                                selectedMeasure = measure
                                showList.toggle()
                            }
//
                    }
                    .listStyle(.plain)
                    .frame(maxHeight: 200)
                    .offset(x: 0, y: 50)
                }
            }
           
//            if showList {
//                List(CustomMeasureOfMagnitude.allCases) { measure in
//                    Text("\(measure.rawValue)")
//                        .onTapGesture {
//                            selectedMeasure = measure
//                            showList.toggle()
//                        }
//                }
//                .listStyle(.plain)
//                .frame(maxHeight: 200)
//            }
        }
        .frame(width: 130)
    }
}

//#Preview {
//    CustomPickerMeasureView()
//}
