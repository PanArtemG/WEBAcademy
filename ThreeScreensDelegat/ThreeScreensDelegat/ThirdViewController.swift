//
//  ThirdViewController.swift
//  ThreeScreensDelegat
//
//  Created by Artem Panasenko on 19.07.2020.
//  Copyright © 2020 Artem Panasenko. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var firstName:String!
    var lastName:String!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        firstNameLabel.text = firstName
        lastNameLabel.text = lastName
       }
    
    @IBAction func saveFullNameBtn(_ sender: UIButton) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        firstVC.fullName = "\(firstName ?? "")  \(lastName ?? "")"
        navigationController?.pushViewController(firstVC, animated: true)
        
        // Данные не передаются!!!
//        navigationController?.popToRootViewController(animated: true)
        
    }
    
}
