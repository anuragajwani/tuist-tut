//
//  SaladPreppingView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

struct IngredientPrepping: Identifiable {
    var id: String { self.ingredient.rawValue }
    
    let ingredient: Ingredient
    var preppingStatus: IngredientPreppingViewStatus
}

struct SaladPreppingView: View {
    let onSaladPrepped: () -> ()
    let onCancelSalad: () -> ()
    
    @State var ingredientsPrepping: [IngredientPrepping] = Ingredient.allCases.map({ IngredientPrepping(ingredient: $0, preppingStatus: .prepping) })
    
    init(onSaladPrepped: @escaping () -> (),
         onCancelSalad: @escaping () -> ()) {
        self.onSaladPrepped = onSaladPrepped
        self.onCancelSalad = onCancelSalad
    }
    
    var body: some View {
        VStack {
            List(ingredientsPrepping) { ingredientPrepping in
                IngredientPreppingView(ingredient: ingredientPrepping.ingredient, status: ingredientPrepping.preppingStatus)
            }
            Button(action: self.onCancelSalad, label: {
                Text("Cancel")
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .background(Color.blue)
                    .cornerRadius(5.0)
            })
            .padding()
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                SaladMaker().make { (ingredient) in
                    let index = self.ingredientsPrepping.firstIndex(where: { $0.ingredient == ingredient })!
                    var ingredientPrepping = self.ingredientsPrepping[index]
                    ingredientPrepping.preppingStatus = .ready
                    self.ingredientsPrepping[index] = ingredientPrepping
                    self.serveSaladIfAllReady()
                }
            }
        }
    }
    
    func serveSaladIfAllReady() {
        if self.ingredientsPrepping.filter({ $0.preppingStatus == .ready }).count == self.ingredientsPrepping.count {
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { (_) in
                self.onSaladPrepped()
            }
        }
    }
}

struct SaladPreppingView_Previews: PreviewProvider {
    static var previews: some View {
        SaladPreppingView(onSaladPrepped: {
            
        }, onCancelSalad: {
            
        })
    }
}
