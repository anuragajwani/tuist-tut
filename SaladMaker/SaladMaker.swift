//
//  SaladMaker.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import Foundation

class SaladMaker {
    
    func make(onIngredientPrepped: @escaping (Ingredient) -> ()) {
         Ingredient.allCases.forEach { (ingredient) in
             DispatchQueue.global(qos: .userInitiated).async {
                  let randomPrepTime = UInt32.random(in: 1...3)
                  sleep(randomPrepTime)
                  DispatchQueue.main.async {
                      onIngredientPrepped(ingredient)
                  }
             }
        }
    }
}
