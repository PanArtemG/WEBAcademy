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
//        levelName = "L11C" //  Level name
//        super.viewDidLoad()
//    }
//
//    override func run() {
//        move()
//        moveCandy()
//    }
//
//    func moveCandy() {
//        pick()
//        move()
//        put()
//        put()
//        turnAround()
//        move()
//        backToCandys()
//    }
//
//    func backToCandys() {
//        turnAround()
//        if noCandyPresent {
//            backDobleCountCandy()
//        } else {
//            moveCandy()
//        }
//
//    }
//
//    func backDobleCountCandy() {
//        move()
//        while candyPresent {
//            backCandy()
//        }
//    }
//
//    func backCandy() {
//        turnAround()
//        pick()
//        move()
//        put()
//        turnAround()
//        move()
//    }
//
//    func turnAround() {
//        turnRight()
//        turnRight()
//    }
//
//}
