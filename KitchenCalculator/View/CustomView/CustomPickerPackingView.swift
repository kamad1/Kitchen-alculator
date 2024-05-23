//
//  CustomPickerPackingView.swift
//  KitchenCalculator
//
//  Created by Jedi on 22.05.2024.
//

//import SwiftUI
//
//struct CustomPickerPackingView: View {
//    @Binding var selectedPacking: CustomPacking
//    @State private var showList = false
//    
//    var body: some View {
//        
//        VStack {
//            HStack(spacing: 0) {
//                Text("\(selectedPacking.rawValue)")
//                    .padding(5)
//                Spacer()
//                Image(systemName: "triangle")
//                    .padding(5)
//                    .rotationEffect(.degrees(180))
//                    .onTapGesture {
//                        showList.toggle()
//                    }
//            }
//            .frame(width: 130, height: 60)
//            .background {
//                Image(.posuda)
//                    .resizable()
//            }
//            .accentColor(.black).bold()
//            .background(.white)
//            .border(.mint)
//            if showList {
//                List(CustomPacking.allCases) { pack in
//                    Text("\(pack.rawValue)")
//                        .onTapGesture {
//                            selectedPacking = pack
//                            showList.toggle()
//                        }
//                }
//                .listStyle(.plain)
//                .frame(maxHeight: 100)
//                
//            }
//        }
//        .frame(width: 130)
////
//        
//    }
//}

//#Preview {
//    CustomPickerMeasureView()
//}
