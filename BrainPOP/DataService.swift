//
//  DataService.swift
//  BrainPOP
//
//  Created by Michael De La Cruz on 11/17/16.
//  Copyright © 2016 Michael De La Cruz. All rights reserved.
//

import Foundation

// Limiting this protocol to a class
protocol DataServiceDelegate: class {
    func brainFreezeLoaded()
}

// Using class because this will be a singleton
class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var brainArray: Array<Brain> = []
    
    func loadBrainFreezeData() {
        // Cholocate
        brainArray.append(Brain(id: 1, productName: "Loaded Cholocate Cone", freezeId: 1, flavorId: 2, ingredientId: 1))
        brainArray.append(Brain(id: 2, productName: "Loaded Cholocate Cake", freezeId: 2, flavorId: 2, ingredientId: 1))
        brainArray.append(Brain(id: 3, productName: "Plain Chocolate Cone", freezeId: 1, flavorId: 2, ingredientId: 2))
        brainArray.append(Brain(id: 4, productName: "Plain Cholocate Cake", freezeId: 2, flavorId: 2, ingredientId: 2))
        
        // Vanilla
        brainArray.append(Brain(id: 5, productName: "Loaded Vanilla Cone", freezeId: 1, flavorId: 1, ingredientId: 1))
        brainArray.append(Brain(id: 6, productName: "Loaded Vanilla Cake", freezeId: 2, flavorId: 1, ingredientId: 1))
        brainArray.append(Brain(id: 7, productName: "Plain Vanilla Cone", freezeId: 1, flavorId: 1, ingredientId: 2))
        brainArray.append(Brain(id: 8, productName: "Plain Vanilla Cake", freezeId: 2, flavorId: 1, ingredientId: 2))
        
        // Cherry
        brainArray.append(Brain(id: 9, productName: "Loaded Cherry Cone", freezeId: 1, flavorId: 3, ingredientId: 1))
        brainArray.append(Brain(id: 10, productName: "Loaded Cherry Cake", freezeId: 2, flavorId: 3, ingredientId: 1))
        brainArray.append(Brain(id: 11, productName: "Plain Cherry Cone", freezeId: 1, flavorId: 3, ingredientId: 2))
        brainArray.append(Brain(id: 12, productName: "Plain Cherry Cake", freezeId: 2, flavorId: 3, ingredientId: 2))
        
        // Cookie Cream
        brainArray.append(Brain(id: 13, productName: "Loaded Cookie Cream Cone", freezeId: 1, flavorId: 4, ingredientId: 1))
        brainArray.append(Brain(id: 14, productName: "Loaded Cookie Cream Cake", freezeId: 2, flavorId: 4, ingredientId: 1))
        brainArray.append(Brain(id: 15, productName: "Plain Cookie Cream Cone", freezeId: 1, flavorId: 4, ingredientId: 2))
        brainArray.append(Brain(id: 16, productName: "Plain Cookie Cream Cake", freezeId: 2, flavorId: 4, ingredientId: 2))
        
        delegate?.brainFreezeLoaded()
    }
}
