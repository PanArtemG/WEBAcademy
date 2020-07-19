//
//  ViewController.swift
//  ThreeScreensDelegat
//
//  Created by Artem Panasenko on 19.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstName:String!
    var lastName:String!
    var fullName:String!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.isHidden = true
        if let text = fullName {
            fullNameLabel.text = text
            fullNameLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView" {
            let viewSegue = segue.destination as! SecondViewController
            viewSegue.firstName = firstNameTextField.text
        }
    }
    
//    Почему не работает????!!!!
    
//    @IBAction func nextViewBtn(_ sender: UIBarButtonItem) {
//        let thirdVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//
//        thirdVC.lastNameTextField.text = "firstNameTextField.text"
//        print(firstNameTextField.text)
//        navigationController?.pushViewController(thirdVC, animated: true)
//        }
    
}

