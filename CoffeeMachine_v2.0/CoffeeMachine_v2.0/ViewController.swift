//
//  ViewController.swift
//  CoffeeMachine_v2.0
//
//  Created by Artem Panasenko on 19.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var makeEspresso: UIButton!
    @IBOutlet weak var makeLatte: UIButton!
    @IBOutlet weak var infoBtn: UIButton!
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var prepearProgress: UIProgressView!
    
    let coffeMachine = CoffeMachine(lvlWater: 100,
                                    lvlCoffee: 100,
                                    lvlMilk: 100,
                                    surop: Surop(chocolate: 20, vanila: 0, coconut: 10))
    var textForInfoLabel = "Shoose coffee 😃"
    var progress = Progress(totalUnitCount: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "coffee_cup_minimalism_120197_938x1668.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        infoLabel.text = textForInfoLabel
        statusLabel.isHidden = true
        prepearProgress.isHidden = true
        prepearProgress.transform = prepearProgress.transform.scaledBy(x: 1, y: 3)
        infoBtn.tintColor = UIColor.brown
    
        
        
        
        //        coffeMachine.makeCoffe(coffee: CoffeeName.espresso)
        //        coffeMachine.getStatus()
        //        coffeMachine.addWater(addWater: 100)
        //        coffeMachine.makeCoffe(coffee: CoffeeName.chokolateLatte)
        //        coffeMachine.getStatus()
        
    }
    @IBAction func infoBtn(_ sender: UIButton) {
        statusLabel.isHidden = false
        statusLabel.text = coffeMachine.getStatus()
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { _ in
            self.statusLabel.isHidden = true
        }
        
    }
    
    
    @IBAction func makeEspresso(_ sender: Any) {
        showProgress(result: coffeMachine.makeCoffe(coffee: CoffeeName.espresso))
    }
    
    @IBAction func makeLatte(_ sender: UIButton) {
        showProgress(result: coffeMachine.makeCoffe(coffee: CoffeeName.chokolateLatte))
    }
    
    func showProgress(result: String) {
        self.prepearProgress.progress = 0
        prepearProgress.isHidden = false
        self.infoLabel.text = "Your coffee is prepared..."
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                self.infoLabel.text = result
                self.prepearProgress.isHidden = true
                Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                    self.infoLabel.text = self.textForInfoLabel
                    self.progress = Progress(totalUnitCount: 5)
                }
                return
            }
            
            self.progress.completedUnitCount += 1
            let proggressFloat = Float(self.progress.fractionCompleted)
            self.prepearProgress.setProgress(proggressFloat, animated: true)
            
        }
        
    }
    
}

