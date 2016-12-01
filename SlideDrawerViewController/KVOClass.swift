//
//  KVOClass.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class KVOClass : NSObject {
     var date  = NSDate()
}
class SUBKVOClass: KVOClass {
    dynamic override var date : NSDate{
        get { return super.date}
        set {
            super.date = date
        }
    }
}
private var myContext = 0

class ObserveClass : NSObject {
    var myObject : KVOClass!
    
    override init() {
        super.init()
        myObject = SUBKVOClass()
        
        print("init KVOClass value is",self.myObject.date)
        myObject.addObserver(self, forKeyPath: "date", options:.New, context: &myContext)
        
       let task =  GCDManager.delay(3) { () -> () in
            self.myObject.date = NSDate()
        }
     }
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if let change = change where context == &myContext{
           let a = change[NSKeyValueChangeNewKey]
           print("new KOVClass value is",a)
        }
        
    }
    deinit{
      self.myObject.removeObserver(self, forKeyPath: "date")
    }
}