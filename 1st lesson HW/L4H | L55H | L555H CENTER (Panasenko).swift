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
//        levelName = "L55H" //  Level name
//        super.viewDidLoad()
//    }
//    
//    override func run() {
//        put()
//        go()
//        turnLeft()
//        saveStep()
//        go()
//        pick()
//        pick()
//    }
//    
//    func go() {
//        saveStep()
//        while noCandyPresent {
//            saveStep()
//            if frontIsBlocked {
//                if noCandyPresent {
//                    put()
//                }
//            }
//            if candyPresent {
//                turnAround()
//                saveStep()
//                put()
//                saveStep()
//            }
//        }
//        while frontIsClear {
//            move()
//            
//            if frontIsClear && noCandyPresent {
//                turnAround()
//                saveStep()
//                if candyPresent {
//                    pick()
//                } else {
//                    break
//                }
//            }
//            
//            if frontIsBlocked {
//                pick()
//                turnAround()
//                saveStep()
//                pick()
//            }
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
//}
