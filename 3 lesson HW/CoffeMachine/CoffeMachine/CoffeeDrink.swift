//
//  CoffeeDrink.swift
//  CoffeMachine
//
//  Created by Artem Panasenko on 12.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import Foundation


final class CoffeeDrink {
    var name: String
    var water: Int
    var coffee: Int
    var surop: Surop?
    
    var description: String {  "Hot coffee - '\(name)'" }
    
    init(name: String, water: Int, coffee: Int, surop: Surop?) {
        self.name = name
        self.water = water
        self.coffee = coffee
        self.surop = surop
    }
}

enum CoffeeName {
    case espresso, chokolateLatte
}
