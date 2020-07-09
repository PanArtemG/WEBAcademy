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
//        while frontIsClear {
//            move()
//            if frontIsBlocked && rightIsBlocked && rightIsBlocked && noCandyPresent  {
//                    put()
//                    turnAround()
//                    move()
//            }
//            if frontIsBlocked && rightIsBlocked && rightIsBlocked && candyPresent {
//                break
//            }
//            if frontIsBlocked {
//                 if noCandyPresent {
//                           put()
//                    turnRight()
//                    move()
//                 } else {
//                    break
//                }
//            }
//        }
//    }
//    
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
