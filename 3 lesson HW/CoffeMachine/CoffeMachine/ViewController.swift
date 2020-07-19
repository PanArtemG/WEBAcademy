//
//  ViewController.swift
//  CoffeMachine
//
//  Created by Artem Panasenko on 12.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var makeEspresso: UIButton!
    @IBOutlet weak var makeLatte: UIButton!
    
    @IBOutlet weak var  informationLabel: UILabel!
    @IBOutlet weak var progressCoffee: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                let surop = Surop(chocolate: 20, vanila: 0, coconut: 10)
                let coffeMachine = CoffeMachine(lvlWater: 20, lvlCoffee: 20, lvlMilk: 20, surop: surop)
        
                coffeMachine.makeCoffe(coffee: CoffeeName.espresso)
                coffeMachine.getStatus()
                coffeMachine.addWater(addWater: 100)
                coffeMachine.makeCoffe(coffee: CoffeeName.chokolateLatte)
                coffeMachine.getStatus()
        
        
    }


}

