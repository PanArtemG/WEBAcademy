//
//  ViewController.swift
//  Pyramid UIView
//
//  Created by Artem Panasenko on 05.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createSquare(quantity: 6, whatBuild: figure.piramide)
    }
    
    func createSquare(quantity: Int, whatBuild figure: figure) {
        let step = 20
        let correctStep = 10
        var stepForNewLine = 20
        let positionX = 40
        let defaultX = 20
        var newPositionX = 20
        var newPositionY = 400
        var count = quantity
        
        switch figure {
        case .line:
            for _ in 0..<quantity {
                addBox(positionX: newPositionX, positionY: newPositionY)
                newPositionX += positionX + step
            }
        case .stairs:
            while count > 0 {
                for _ in 0..<count {
                    addBox(positionX: newPositionX, positionY: newPositionY)
                    newPositionX += positionX + step
                    
                }
                newPositionY = newPositionY - step * 3
                newPositionX = defaultX
                count -= 1
            }
        case .piramide:
            while count > 0 {
                for _ in 0..<count {
                    addBox(positionX: newPositionX, positionY: newPositionY)
                    newPositionX += positionX + step
                    
                }
                newPositionY = newPositionY - step * 3
                newPositionX = stepForNewLine + step + correctStep
                stepForNewLine += step + correctStep
                count -= 1
            }
        }
        
    }
    
    func addBox(positionX: Int, positionY: Int) {
        let box = UIView()
        box.frame = CGRect(x: positionX, y: positionY, width: 40, height: 40)
        box.backgroundColor = .blue
        view.addSubview(box)
    }
    
    enum figure {
        case line, stairs, piramide
    }
    
}

