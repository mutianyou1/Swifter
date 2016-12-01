
//
//  GCDManager.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/23.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation
/*
func dispatch_later(block : () ->()){
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64.init(time * Double(NSEC_PER_SEC))),dispatch_get_main_queue(), block)
}

var closure : dispatch_block_t? = task
var result : Task?


let delayedClousure :  Task = {
cancel in
if let internalClosure = closure {
if(cancel == false){
dispatch_async(dispatch_get_main_queue(), internalClosure)
}
}
closure = nil
result = nil

}
result = delayedClousure

dispatch_later { () -> () in
if let delayedClousurek = result {
delayedClousurek(cancel: false)
}
}
return result!
*/
typealias Task = (cancel : Bool) -> Void
struct GCDManager {
    
    static func delay(time :  NSTimeInterval, task : () -> ()) ->Task {
        
        func dispatch_later(block : ()->()) {
           dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64.init(time * Double(NSEC_PER_SEC))),dispatch_get_main_queue() , block)
        }
        
        var clousure : dispatch_block_t? = task
        var result : Task?
        
        let delayClosure : Task = {cancel in
            if let inclousure = clousure {
               
                if(cancel == false){
                   dispatch_async(dispatch_get_main_queue(), inclousure)
                }
            }
            clousure = nil
            result = nil
        }
        result = delayClosure
        
        dispatch_later { () -> () in
            if let delayClosureK = result {
               delayClosureK(cancel: false)
            }
        }
        return result!
       
    }
    
    static func cancel(task : Task?) {
      task?(cancel: true)
    }
    
}