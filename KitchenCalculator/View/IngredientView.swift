

import SwiftUI

struct IngredientView: View {
    @StateObject var viewModel = IngredientViewModel()
    @State private var showAddIngredientView = false
    var body: some View {
        
        VStack {

            List(Ingredient.mockData, id: \.id) { igr in
                Text("\(igr.name) - \(igr.density) плотность")
                
            }
        }.overlay(alignment: .bottomTrailing, content: {
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
        .background {
            Image(.krup2)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
        .overlay {
//            AddNewIngredientView {
//                viewModel.addNewIngredient(ingredient: <#T##Ingredient#>)
//            } dismissAction: {
//                showAddIngredientView = false
//            }
            AddNewIngredientView {
                showAddIngredientView = false

            }
            .offset(y: showAddIngredientView ? 0 : 700)
        }
        .animation(.easeInOut, value: showAddIngredientView)
    }
}

#Preview {
    IngredientView()
}
