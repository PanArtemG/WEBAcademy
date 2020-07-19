//
//  CoffeMachine.swift
//  CoffeMachine
//
//  Created by Artem Panasenko on 12.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import Foundation


final class CoffeMachine {
    private var lvlWater: Int
    private var lvlCoffee: Int
    private var lvlMilk: Int
    private var surop: Surop
    
    init(lvlWater: Int = 100, lvlCoffee: Int = 100, lvlMilk: Int = 100, surop: Surop) {
        self.lvlWater = lvlWater
        self.lvlCoffee = lvlCoffee
        self.lvlMilk = lvlMilk
        self.surop = surop
    }
    
    func getStatus () -> String {
        return
            """
            WATER - \(lvlWater) ml;
            COFFEE - \(lvlCoffee) gr;
            Surop:
            CHOCOLATE - \(String(describing: surop.chocolate ?? 0)) ml;
            VANILA - \(String(describing: surop.vanila ?? 0)) ml;
            COCONUT - \(String(describing: surop.coconut ?? 0)) ml.
            """
    }
    
    func addWater(addWater water: Int) -> String {
        if water > 0 {
            lvlWater += water
        }
        return "Level water in tank - \(lvlWater)"
    }
    
    func addCoffee(addCoffee coffee: Int) -> String {
        if coffee > 0 {
            lvlCoffee += coffee
        }
        return "Level coffe in tank - \(lvlCoffee)"
    }
    
    func addMilk(addMilk milk: Int) -> String  {
        if milk > 0 {
            lvlMilk += milk
        }
        return "Level milk in tank - \(lvlMilk)"
    }
    
    func addSurop(addSurop surop: Surop) {
        if let chocolate = surop.chocolate {
            chocolate > 0 ? self.surop.chocolate = (self.surop.chocolate ?? 0) + chocolate : nil
            print("Level surop chocolate in tank - \(self.surop.chocolate!)")
        }
        if let vanila = surop.vanila {
            vanila > 0 ? self.surop.vanila = (self.surop.vanila ?? 0) + vanila : nil
            print("Level surop vanila in tank - \(self.surop.vanila!)")
        }
        
        if let coconut = surop.coconut {
            coconut > 0 ? self.surop.coconut = (self.surop.coconut ?? 0) + coconut : nil
            print("Level surop coconut in tank - \(self.surop.coconut!)")
        }
    }
    
    func makeCoffe(coffee: CoffeeName) -> String {
        switch coffee {
        case .espresso:
            return  makeEspresso()
        case .chokolateLatte:
            return makeChockolateLatte()
        }
    }
    
    
    
    private func makeEspresso () -> String {
        let name = "Espresso"
        let watter = 30
        let coffe = 9
        let surop: Surop? = nil
        
        guard lvlWater > watter else {
            return  "ALERT!!! Low level WATER in coffe machine!!! ADD WATER!!!"
            
        }
        guard lvlCoffee > coffe else {
            return "ALERT!!! Low level COFFE in coffe machine!!! ADD COFFE!!!"
        }
        
        lvlWater -= watter
        lvlCoffee -= coffe
        
        let espresso = CoffeeDrink(name: name,
                                   water: watter,
                                   coffee: coffe,
                                   surop: surop)
        return "Coffe '\(espresso.name)' reade ☕️"
    }
    
    private func makeChockolateLatte() -> String {
        let name = "Chockolate Latte"
        let watter = 30
        let coffe = 9
        let surop: Surop = .init(chocolate: 10, vanila: 0, coconut: 0)
        
        guard lvlWater > watter else {
            return "ALERT!!! Low level WATER in coffe machine!!! ADD WATER!!!"
        }
        
        guard lvlCoffee > coffe else {
            return "ALERT!!! Low level COFFE in coffe machine!!! ADD COFFE!!!"
        }
        
        guard self.surop.chocolate! > surop.chocolate! else {
            return "ALERT!!! Low level CHOCOLATE SUROP in coffe machine!!! ADD CHOCOLATE SUROP!!!"
        }
        
        lvlWater -= watter
        lvlCoffee -= coffe
        self.surop.chocolate! -= surop.chocolate!
        
        let chockolateLatte = CoffeeDrink(name: name,
                                          water: watter,
                                          coffee: coffe,
                                          surop: surop)
        return "Coffe '\(chockolateLatte.name)' reade 🧉"
    }
}


struct Surop {
    var chocolate: Int? = 100
    var vanila: Int? = 100
    var coconut: Int? = 100
}





