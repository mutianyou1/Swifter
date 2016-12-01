//
//  SwizzleMethod.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation
import UIKit


extension UIButton {
    
    //load 在swift里面不是app一开始启动加载的
    //swift子类采用关键字@dynamic标示方法，标示可以派发
    public override class func initialize(){
        if self != UIButton.self {
           return
        }
        XXX_swizzleSendAction()
    }
    
    class func XXX_swizzleSendAction(){
        struct XXX_swizzleToken {
            static var token : dispatch_once_t = 0
         }
        
        dispatch_once(&XXX_swizzleToken.token) { () -> Void in
            let cls : AnyClass = UIButton.self
            
            //method
            let originalSelector = Selector("sendAction:to:forEvent:")
            let swizzledSelector = Selector("xxx_sendAction:to:forEvent:")
            
            let originalMethod = class_getInstanceMethod(cls, originalSelector)
            let swizzledMethod = class_getInstanceMethod(cls, swizzledSelector)
            
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
        
        
    }
    
    public func xxx_sendAction(action : Selector , to : AnyObject!, forEvent : UIEvent!){
        struct xxx_buttonClickCounter {
            static var count : Int = 0
        }
        
        xxx_buttonClickCounter.count += 1
        print("click add count",xxx_buttonClickCounter.count)
        
        xxx_sendAction(action, to: to, forEvent: forEvent)
        
    }
}