
import SwiftUI

struct StartView: View {
    
    @State private var sumNum: String = ""
    @State private var weightGradation: PickerModelGramm = .gramm
    @State private var vСapacity: PickerModelGlass = .glass
    @State private var bulkSolids: PickerModelBulkSolids = .sugar
    
    
    
    var body: some View {
        VStack {
            HStack() {
                VStack(alignment: .leading, spacing: 20) {
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
                    
                    
                    Text("Вес: \(sumNum) \(weightGradation.rawValue.lowercased())\nКл-во \(vСapacity.rawValue) - 0") // расчеты тут пока удалил
                        .frame(maxWidth: 150, maxHeight: 70)
                        .foregroundStyle(.black)
                        .padding()
                        .border(.mint)
                        .background(.white)
                        .padding(2)
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 27) {
                    
                    Picker(selection: $weightGradation) {
                        ForEach(PickerModelGramm.allCases, id: \.rawValue) {
                            gradation in
                            Text(gradation.rawValue).tag(gradation)
                        }
                    } label: {
                        Text(weightGradation.rawValue)
                            .foregroundStyle(.black)
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
                    
                    Picker(selection: $vСapacity) {
                        ForEach(PickerModelGlass.allCases, id: \.rawValue) {
                            capacity in
                            Text(capacity.rawValue).tag(capacity)
                        }
                    } label: {
                        Text(vСapacity.rawValue)
                        
                    }
                    .frame(width: 130, height: 60)
                    .background {
                        Image(.posuda)
                            .resizable()
                    }
                    .accentColor(.black).bold()
                    .background(.white)
                    .border(.mint)
                }
            }
            
            VStack {
                Picker(selection: $bulkSolids) {
                    ForEach(PickerModelBulkSolids.allCases, id: \.rawValue) {
                        bulk in
                        Text(bulk.rawValue).tag(bulk)
                        
                    }
                } label: {
                    Text(bulkSolids.rawValue)
                }
                .accentColor(.white).bold()
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
                    }
                }).frame(maxWidth: .infinity, maxHeight: 40)
                    .border(.mint)
                    .background(.white)
                
                Button(action: {
                    //
                }, label: {
                    Text("Запомнить")
                        .foregroundStyle(.black)
                    Image(systemName: "opticaldisc").imageScale(.large)
                        .tint(.black)
                }).frame(maxWidth: .infinity, maxHeight: 40)
                    .border(.mint)
                    .background(.white)
                
                List{
                    //
                }
                .border(.mint)
                
                .clipShape(.rect(cornerRadii: .init(bottomLeading: 12)))
                .clipShape(.rect(cornerRadii: .init(bottomTrailing: 120)))
                
            }
            
            
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
                .offset(x: 0, y: 20)
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

#Preview {
    StartView()
}
