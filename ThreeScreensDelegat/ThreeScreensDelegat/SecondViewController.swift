//
//  SecondViewController.swift
//  ThreeScreensDelegat
//
//  Created by Artem Panasenko on 19.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var firstName:String!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
//
        
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToThirdView" {
            let viewSegue = segue.destination as! ThirdViewController
            viewSegue.firstName = firstName
            viewSegue.lastName = lastNameTextField.text
        }
    }

    
    
    
    
}
