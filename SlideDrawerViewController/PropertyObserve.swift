//
//  PropertyObserve.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation


class Observe {
    var value : Int {
        set {
          print("set father value")
        }
        get{
          print("get father value")
          return 100
        }

    }
}
class sonOfObserve: Observe {
    override var value : Int {
      willSet{
        print("son value will set")
      }
        didSet {
            //会使用到old value 那么调用了父类的get方法
           print("son value did set")
        }
    }
}
class MyDate {
    var date : NSDate {
        willSet {
            
          print("日期将要变成",newValue)
        }
        
        didSet {
            
            if date.timeIntervalSince1970 - oldValue.timeIntervalSince1970 > 1000 {
                print("新的时间不能超过之前时间的1000秒")
               date = oldValue.dateByAddingTimeInterval(1000)
            }
           print("日期\(oldValue)已经变成\(date)")
        }
      
    }
    
    
    
    init(){
       date = NSDate()
    }
}