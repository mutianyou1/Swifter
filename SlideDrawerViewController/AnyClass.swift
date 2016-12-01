//
//  AnyClass.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class A {
    class func methodForAClass(){
      print("class or static method")
    }
}


@objc(GreetClass)
class 我的类 :NSObject{
    
    @objc(greeting:)
    dynamic func 打招呼(str : String){
      print("小明"+str)
    }
}
