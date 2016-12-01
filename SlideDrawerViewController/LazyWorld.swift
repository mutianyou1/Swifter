//
//  LazyWorld.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class LazyClass {
     lazy var name : String =  {
        let str = "Elisaberize"
        print("first init")
        return str
    }()
}


func valueFrom(object : Any, key : String) -> Any? {
   let mirro = Mirror(reflecting: object)
    
    for i in mirro.children.startIndex..<mirro.children.endIndex {
        let (targetKey ,  targetValue) = mirro.children[i]
        //print(targetKey)
        if(targetKey == key){
           return targetValue
        }
    }
    return nil
    
}