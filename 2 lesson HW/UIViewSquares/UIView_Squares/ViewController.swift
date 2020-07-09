//
//  ViewController.swift
//  UIView_Squares
//
//  Created by Artem Panasenko on 05.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createSquare(quantity: 5, buildCircle: true)
        
    }
    
    func createSquare(quantity: Int, buildCircle: Bool) {
        let step = 20
        var defaultSize = 100
        var defaultPosition = 100
        
        var defaultColor: UIColor = .blue
        
        
        for _ in 0..<quantity {
            if defaultColor == UIColor.blue {
                defaultColor = .red
            } else {
                defaultColor = .blue
            }
            addBox(size: defaultSize, position: defaultPosition, color: defaultColor, buildCircle: buildCircle)
            defaultSize -= step
            defaultPosition += 10
        }
    }
    
    func addBox(size: Int, position: Int, color: UIColor, buildCircle: Bool) {
        let box = UIView()
        box.frame = CGRect(x: position, y: position,
                           width: size, height: size)
        buildCircle ? box.layer.cornerRadius = CGFloat(size/2) : nil
        box.backgroundColor = color
        view.addSubview(box)
    }


}

