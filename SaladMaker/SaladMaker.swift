//
//  SaladMaker.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import Foundation

class SaladMaker {
    
    func make(onIngrdientPrepped: @escaping (Ingredient) -> ()) {
        Ingredient.allCases.forEach { (ingredient) in
            sleep(1)
            // completed ingredient prep
            onIngrdientPrepped(ingredient)
        }
    }
}
