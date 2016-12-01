
//
//  FinalWorld.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class FinalClass {
    final func method(){
       print("start set up")
       setup()
       print("end set up")
    }
    func setup(){
        fatalError("sub class must implement set up")
        //print("setting")
    }
}

class subFinalClass: FinalClass {
    override func setup() {
        print("setting sub class")
    }
}