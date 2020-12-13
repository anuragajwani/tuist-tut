//
//  Ingredient.swift
//  SaladMaker
//
//  Created by Anurag Ajwani on 12/12/2020.
//

import Foundation

enum Ingredient: String, CaseIterable, Identifiable {
    var id: String { rawValue }
    
    case lettuce,
         redOnion,
         sweetcorn,
         tomatoes,
         tuna
}
