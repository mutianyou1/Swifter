//
//  ProtocalClass.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

protocol copyable {
   func copy() ->Self
}
class CopyClass : copyable {
    var num = 1
   required init(){
    
    }
    func copy() -> Self {
        //动态类型
        let result = self.dynamicType.init()
        result.num = num
        return result
    }
    class func copy()->CopyClass{
        let result = self.init()
        
        result.num = 1
        return result
    }
}