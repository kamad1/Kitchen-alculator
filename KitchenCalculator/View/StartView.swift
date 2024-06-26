
import SwiftUI

struct StartView: View {
    @StateObject  var viewModel = StartViewModel()
    @State  var sumNum: String = ""
    @State  var animateGradient = false
    @State  var selectedMeasure: CustomMeasureOfMagnitude = .init(name: "Не выбрано", isWeight: true, baseValue: 0.0)
    @State  var selectedPacking: CustomMeasureOfMagnitude = .init(name: "Не выбрано", isWeight: true, baseValue: 0.0)

    var body: some View {
        VStack {
            HStack() {
                VStack(alignment: .leading, spacing: 64) {
                    TextField("Введите число", text: $sumNum)
                        .multilineTextAlignment(.center)
                        .frame(width: 176)
                        .font(.title3)
                        .padding(3)
                        .background(.white)
                        .clipShape(.rect(topLeadingRadius: 12))
                        .border(.mint)
                        .clipShape(.rect(topLeadingRadius: 12))
                        .shadow(radius: 4)
                    
                    Text("Вес: \(sumNum)")
                        .frame(maxWidth: 150)
                        .foregroundStyle(.black)
                        .padding()
                        .border(.mint)
                        .background(.white)
                        .padding(2)
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 27) {

                    CustomPickerMeasureView(selectedMeasure: $selectedMeasure, mockDatas: viewModel.inMeasure)
                        .zIndex(10)
                    CustomPickerMeasureView(selectedMeasure: $selectedPacking, mockDatas: viewModel.outMeasure)

                }
            }
            .zIndex(9)
            
            VStack {
                
                Picker("Мера",
                       selection: $viewModel.ingredient) {
                    ForEach(viewModel.ingredient, id: \._id) { ingredient in
                        Text(ingredient.name).tag(ingredient)
                    }
                }
                       

                       .accentColor(.white)
                       .frame(maxWidth: .infinity, maxHeight: 40)
                       .background {
                           Image(.krup1)
                               .resizable()
                       }
                       .padding(2)
                       .border(.mint)
                       .shadow( radius: 4)
                       
                Button(action: {
                    //
                }, label: {
                    ZStack {
                        Image(.schet)
                            .resizable()
                        
                        Text("Расчет")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.heavy)
                    }
                }).frame(maxWidth: .infinity, maxHeight: 40)
                    .border(.mint)
                    .background(.white)

                Button(action: {
                    //
                }, label: {
                    Text("Записать")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Image(systemName: "opticaldisc").imageScale(.large)
                        .tint(.white)
                }).frame(maxWidth: .infinity, maxHeight: 40)
                    .border(.mint)
                    .background {
                        LinearGradient(colors: [Color.purple, Color.pink, Color.yellow], startPoint: .leading, endPoint: .trailing)
                            .hueRotation(.degrees(animateGradient ? 45 : 0))
                            .onAppear {
                                withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                                    animateGradient.toggle()
                                }
                            }
                    }
                
                List{
                    //
                }
                .background(.white)
                .border(.mint)
                
                .clipShape(.rect(cornerRadii: .init(bottomLeading: 12)))
                .clipShape(.rect(cornerRadii: .init(bottomTrailing: 120)))
                .frame(maxHeight: 350)
                
                Divider()
                    .padding(.bottom, 25)
                
            }
         

            Spacer()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .bottomTrailing, content: {
                Button {
                    //
                } label: {
                    Image(.button).renderingMode(.original)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(.circle)
                        .foregroundColor(.blue)
                }
                .offset(x: 0, y: -45)
            })
            .padding()
            .background {
                Image(.krup2)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
    }
    
}

//#Preview {
//    StartView(selectedMeasure: <#CustomMeasureOfMagnitude#>, selectedPacking: <#CustomMeasureOfMagnitude#>)
//    
//}



//
//import SwiftUI
//
//struct StartView: View {
//    @StateObject  var viewModel = StartViewModel()
//    @State private var sumNum: String = ""
//    @State private var animateGradient = false
//    @State private var selectedMeasure: CustomMeasureOfMagnitude = .init(name: "Не выбран")
//    @State private var selectedPacking: CustomMeasureOfMagnitude = .init(name: "Не выбран")
//    var body: some View {
//        VStack {
//            HStack() {
//                VStack(alignment: .leading, spacing: 64) {
//                    TextField("Введите число", text: $sumNum)
//                        .multilineTextAlignment(.center)
//                        .frame(width: 176)
//                        .font(.title3)
//                        .padding(3)
//                        .background(.white)
//                        .clipShape(.rect(topLeadingRadius: 12))
//                        .border(.mint)
//                        .clipShape(.rect(topLeadingRadius: 12))
//                        .shadow(radius: 4)
//                    
//                    Text("Вес: \(sumNum)")
//                        .frame(maxWidth: 150)
//                        .foregroundStyle(.black)
//                        .padding()
//                        .border(.mint)
//                        .background(.white)
//                        .padding(2)
//                }
//                
//                Spacer()
//                
//                VStack(alignment: .center, spacing: 27) {
////                    Picker("Мера", selection: $viewModel.inMeasure) {
////                        ForEach(viewModel.measures) { measure in
////                            Text(measure.name).tag(measure)
////                        }
////                    }
////                    .frame(width: 130, height: 60)
////                    .background {
////                        Image(.ves2)
////                            .resizable()
////                            .scaledToFill()
////                    }
////                    .accentColor(.black).bold()
////                    .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
////                    .padding(2)
////                    .background(.white)
////                    .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
////                    .border(.mint)
////                    .clipShape(.rect(cornerRadii: .init(topTrailing: 12)))
//                    CustomPickerMeasureView(selectedMeasure: $selectedMeasure, mockDatas: viewModel.measures)
//                        .zIndex(10)
//                    CustomPickerMeasureView(selectedMeasure: $selectedPacking, mockDatas: viewModel.packings)
//                        
//
//                    
////                        CustomPickerMeasureView(selectedMeasure: $selectedMeasure)
////                        .zIndex(10)
////                       
////                    CustomPickerMeasureView(selectedMeasure: $selectedPacking)
////                        .zIndex(9)
//                        
////                    CustomPickerPackingView(selectedPacking: $selectedPacking)
//                    
//                    
////                    Picker("Мера", selection: $viewModel.outMeasure) {
////                        ForEach(viewModel.packings) { pack in
////                            Text(pack.name).tag(pack)
////                        }
////                    }
////                    .frame(width: 130, height: 60)
////                    .background {
////                        Image(.posuda)
////                            .resizable()
////                    }
////                    .accentColor(.black).bold()
////                    .background(.white)
////                    .border(.mint)
//                }
//            }
//            .zIndex(9)
//            
//            VStack {
//                
//                Picker("Мера",
//                       selection: $viewModel.ingredient) {
//                    ForEach(viewModel.ingredients) { ingredient in
//                        Text(ingredient.name).tag(ingredient)
//                    }
//                }
//                       
//
//                       .accentColor(.white)
//                       .frame(maxWidth: .infinity, maxHeight: 40)
//                       .background {
//                           Image(.krup1)
//                               .resizable()
//                       }
//                       .padding(2)
//                       .border(.mint)
//                       .shadow( radius: 4)
//                       
//                Button(action: {
//                    //
//                }, label: {
//                    ZStack {
//                        Image(.schet)
//                            .resizable()
//                        
//                        Text("Расчет")
//                            .foregroundStyle(.white)
//                            .font(.title)
//                            .fontWeight(.heavy)
//                    }
//                }).frame(maxWidth: .infinity, maxHeight: 40)
//                    .border(.mint)
//                    .background(.white)
//
//                Button(action: {
//                    //
//                }, label: {
//                    Text("Записать")
//                        .foregroundStyle(.white)
//                        .font(.title)
//                        .fontWeight(.heavy)
//                    
//                    Image(systemName: "opticaldisc").imageScale(.large)
//                        .tint(.white)
//                }).frame(maxWidth: .infinity, maxHeight: 40)
//                    .border(.mint)
//                    .background {
//                        LinearGradient(colors: [Color.purple, Color.pink, Color.yellow], startPoint: .leading, endPoint: .trailing)
//                            .hueRotation(.degrees(animateGradient ? 45 : 0))
//                            .onAppear {
//                                withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
//                                    animateGradient.toggle()
//                                }
//                            }
//                    }
//                
//                List{
//                    //
//                }
//                .background(.white)
//                .border(.mint)
//                
//                .clipShape(.rect(cornerRadii: .init(bottomLeading: 12)))
//                .clipShape(.rect(cornerRadii: .init(bottomTrailing: 120)))
//                .frame(maxHeight: 350)
//                
//                Divider()
//                    .padding(.bottom, 25)
//                
//            }
//         
//
//            Spacer()
//            
//        }.frame(maxWidth: .infinity, maxHeight: .infinity)
//            .overlay(alignment: .bottomTrailing, content: {
//                Button {
//                    //
//                } label: {
//                    Image(.button).renderingMode(.original)
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .clipShape(.circle)
//                        .foregroundColor(.blue)
//                }
//                .offset(x: 0, y: -45)
//            })
//            .padding()
//            .background {
//                Image(.krup2)
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea()
//            }
//    }
//    
//}
//
//#Preview {
//    StartView()
//    
//}
