////
////  SwiftRobotControlCenter.swift
////  MyRobot
////
////  Created by Ivan Vasilevich on 10/4/14.
////  Copyright (c) 2014 Ivan Besarab. All rights reserved.
////
//
//import UIKit
////  All robot commands can be founded in GameViewController.h
//class SwiftRobotControlCenter: RobotControlCenter {
//    
//    //  Level name setup
//    override func viewDidLoad() {
//        levelName = "L3C" //  Level name
//        super.viewDidLoad()
//        //        run()
//    }
//    
//    override func run() {
//            findMount()
//            goToTheMount()
//            backToTheEart()
//        run()
//    }
//    
//    func findMount() {
//        while frontIsClear {
//            move()
//            }
//        turnRight()
//        
//    }
//    
//    func goToTheMount() {
//        while leftIsBlocked && frontIsClear {
//            if frontIsClear {
//                move()
//            } else {
//                break
//            }
//        }
//        turnLeft()
//        saveStep()
//    }
//    
//    func backToTheEart(){
//        turnLeft()
//        while frontIsClear {
//            move()
//        }
//        turnRight()
//    }
//    
//    func saveStep() {
//        if frontIsClear {
//            move()
//        }
//    }
//    
//    func turnLeft() {
//        turnRight()
//        turnRight()
//        turnRight()
//    }
//    
//    
//}
