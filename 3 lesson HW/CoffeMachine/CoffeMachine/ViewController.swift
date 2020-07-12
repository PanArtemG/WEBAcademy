//
//  ViewController.swift
//  CoffeMachine
//
//  Created by Artem Panasenko on 12.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let surop = Surop(chocolate: 20, vanila: 0, coconut: 10)
        
        let coffeMachine = CoffeMachine(lvlWater: 20, lvlCoffe: 20, lvlMilk: 20, surop: surop)
        
        coffeMachine.getStatus()
        coffeMachine.makeEspresso(coffeMachine: coffeMachine)
        coffeMachine.getStatus()
        
        coffeMachine.addWater(addWater: 100)
        
        coffeMachine.makeChockolateLatte(coffeMachine: coffeMachine)
        
        coffeMachine.getStatus()
        
    }


}

