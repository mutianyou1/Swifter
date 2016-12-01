//
//  main.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/17.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation
import UIKit


class MyApplication: UIApplication {
    override func sendEvent(event: UIEvent) {
        super.sendEvent(event)
        //print(event.description)
    }
}
UIApplicationMain(Process.argc, Process.unsafeArgv, NSStringFromClass(MyApplication), NSStringFromClass(AppDelegate))