//
//  CoffetDrink.swift
//  CoffeMachine
//
//  Created by Artem Panasenko on 12.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import Foundation


final class CoffeDrink {
    var name: String
    var water: Int
    var coffe: Int
    var surop: Surop?
    
    var description: String {  "Hot coffe - '\(name)'" }
    
    init(name: String, water: Int, coffe: Int, surop: Surop?) {
        self.name = name
        self.water = water
        self.coffe = coffe
        self.surop = surop
    }
}

