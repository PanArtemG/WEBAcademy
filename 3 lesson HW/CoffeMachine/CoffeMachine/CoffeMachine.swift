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
    private var lvlCoffe: Int
    private var lvlMilk: Int
    private var surop: Surop
    
//    private var status: String {
                                
//    }
    
    
    
    init(lvlWater: Int = 100, lvlCoffe: Int = 100, lvlMilk: Int = 100, surop: Surop) {
        self.lvlWater = lvlWater
        self.lvlCoffe = lvlCoffe
        self.lvlMilk = lvlMilk
        self.surop = surop
    }

    func getStatus () {
        print(
        """
            LEVEL WATER - \(lvlWater) ml;
            LEVEL COFFE - \(lvlCoffe) gr;
            LEVEL SUROP - {
                            CHOCOLATE - \(String(describing: surop.chocolate ?? 0)) ml;
                            VANILA - \(String(describing: surop.vanila ?? 0)) ml;
                            COCONUT - \(String(describing: surop.coconut ?? 0)) ml.
                           }
        """
        )
        
    }
    
    func addWater(addWater water: Int) {
        if water > 0 {
            self.lvlWater += water
        }
        print("Level water in tank - \(self.lvlWater)")
    }
    
    func addCoffe(addCoffe coffe: Int) {
        if coffe > 0 {
             self.lvlCoffe += coffe
        }
        print("Level coffe in tank - \(self.lvlCoffe)")
    }
    
    func addMilk(addMilk milk: Int) {
        if milk > 0 {
            self.lvlMilk += milk
        }
        print("Level milk in tank - \(self.lvlMilk)")
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
    
    
    
    func makeEspresso (coffeMachine: CoffeMachine) -> String {
        let name = "Espresso"
        let watter = 30
        let coffe = 9
        let surop: Surop? = nil
        
        guard coffeMachine.lvlWater > watter else {
            print("ALERT!!! Low level WATER in coffe machine!!! ADD WATER!!!")
            return  ""
            
        }
        guard coffeMachine.lvlCoffe > coffe else {
            print("ALERT!!! Low level COFFE in coffe machine!!! ADD COFFE!!!")
            return ""
        }
        
        coffeMachine.lvlWater -= watter
        coffeMachine.lvlCoffe -= coffe
        
        let espresso = CoffeDrink(name: name,
                                  water: watter,
                                  coffe: coffe,
                                  surop: surop)
        print("Coffe '\(espresso.name)' reade ☕️")
        return ""
    }
    
    func makeChockolateLatte(coffeMachine: CoffeMachine) -> String {
        let name = "Chockolate Latte"
        let watter = 30
        let coffe = 9
        let surop: Surop = .init(chocolate: 10, vanila: 0, coconut: 0)
        
        guard coffeMachine.lvlWater > watter else {
            print("ALERT!!! Low level WATER in coffe machine!!! ADD WATER!!!")
            return ""
        }
        
        guard coffeMachine.lvlCoffe > coffe else {
            print("ALERT!!! Low level COFFE in coffe machine!!! ADD COFFE!!!")
            return ""
        }
        
        guard coffeMachine.surop.chocolate! > surop.chocolate! else {
           print("ALERT!!! Low level CHOCOLATE SUROP in coffe machine!!! ADD CHOCOLATE SUROP!!!")
            return ""
        }
        
        coffeMachine.lvlWater -= watter
        coffeMachine.lvlCoffe -= coffe
        coffeMachine.surop.chocolate! -= surop.chocolate!
        
        let chockolateLatte = CoffeDrink(name: name,
                                         water: watter,
                                         coffe: coffe,
                                         surop: surop)
        
        print("Coffe '\(chockolateLatte.name)' reade 🧉")
        return ""
    }
}


struct Surop {
    var chocolate: Int? = 100
    var vanila: Int? = 100
    var coconut: Int? = 100
}





