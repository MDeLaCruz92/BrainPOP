//
//  Brain.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/17/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import Foundation

enum BrainFreeze: Int {
    case Ice = 1
    case Cream = 2
}

enum Flavors: String {
    case Cholocate = "Cholocate"
    case Vanilla = "Vanilla"
    case Cherry = "Cherry"
    case CookieCream = "CookieCream"
}

enum Ingredient: Int {
    case Sugar = 1
    case Milk = 2
}

struct Brain {
    
    private var _id: Int!
    private var _productName: String!
    private var _freezeId: BrainFreeze!
    private var _flavorId: Flavors!
    private var _ingredientId: Ingredient!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var freezeId: BrainFreeze {
        return _freezeId
    }
    
    var flavorId: Flavors {
        return _flavorId
    }
    var ingredientId: Ingredient {
        return _ingredientId
    }
    
    init(id: Int, productName: String, freezeId: Int, flavorId: Int, ingredientId: Int) {
        _id = id
        _productName = productName
    
    
    // Brain Freeze
    switch freezeId {
    case 2:
        self._freezeId = BrainFreeze.Ice
    default:
        self._freezeId = BrainFreeze.Cream
        }
    
    // Flavors 
    switch flavorId {
    case 2:
        self._flavorId = Flavors.Cholocate
    case 3:
        self._flavorId = Flavors.Cherry
    case 4:
        self._flavorId = Flavors.CookieCream
    default:
        self._flavorId = Flavors.Vanilla
    }
    
    // Ingredient
    switch ingredientId {
    case 2:
        self._ingredientId = Ingredient.Sugar
    default:
        self._ingredientId = Ingredient.Milk
        }
    }
    
}
