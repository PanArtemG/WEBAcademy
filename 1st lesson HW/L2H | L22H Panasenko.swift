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
//        levelName = "L22H" //  Level name
//        super.viewDidLoad()
//        //        run()
//    }
//    
//    override func run() {
//        turnLeft()
//        putCandys()
//        
//        turnRight()
//        findColumn()
//        putCandys()
//        
//        findColumn()
//        putCandys()
//        
//        turnRight()
//        findColumn()
//        
//        putCandys()
//    }
//    
//    
//    //    L2H
//    
//    func findColumn() {
//        if frontIsClear {
//            while frontIsClear {
//                move()
//                if leftIsBlocked {
//                    turnRight()
//                    break
//                }
//                if candyPresent {
//                    turnLeft()
//                    break
//                }
//            }
//        } else {
//            turnLeft()
//            findColumn()
//        }
//    }
//    
//    func putCandys(){
//        while frontIsClear {
//            if noCandyPresent {
//                put()
//            }
//            move()
//        }
//        if noCandyPresent {
//            put()
//        }
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
