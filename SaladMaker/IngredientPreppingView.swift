//
//  IngredientPreppingView.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import SwiftUI

enum IngredientPreppingViewStatus: String {
    case prepping, ready
}

struct IngredientPreppingView: View {
    let ingredient: Ingredient
    let status: IngredientPreppingViewStatus
    
    var body: some View {
        HStack {
            Image(self.ingredient.rawValue)
                .resizable()
                .frame(width: 75, height: 75, alignment: .center)
            Text(self.status.rawValue)
        }
    }
}

struct IngredientPreppingView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientPreppingView(ingredient: .lettuce, status: .prepping)
    }
}
