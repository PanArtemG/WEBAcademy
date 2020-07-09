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
//        levelName = "L4H" //  Level name
//        super.viewDidLoad()
//    }
//    
//    override func run() {
//        while true {
//            while noCandyPresent && frontIsClear {
//                put()
//                saveStep()
//                saveStep()
//                if frontIsBlocked && rightIsBlocked && leftIsBlocked {
//                    put()
//                }
//            }
//            
//            if frontIsBlocked && rightIsBlocked {
//                break
//            } else {
//                turnRight()
//                move()
//                turnRight()
//            }
//            
//            while noCandyPresent && frontIsClear {
//                put()
//                saveStep()
//                saveStep()
//            }
//            if frontIsBlocked && leftIsBlocked {
//                break
//            } else {
//                turnLeft()
//                move()
//                turnLeft()
//                if frontIsBlocked && rightIsBlocked {
//                    break
//                }
//            }
//            
//        }
//    }
//    
//    
//    func turnAround() {
//        turnRight()
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
//}
