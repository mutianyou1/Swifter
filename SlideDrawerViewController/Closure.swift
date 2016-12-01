//
//  Closure.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/12/1.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

extension Int {
    func times(f : Int -> ()){
       print("Int")
        for i in 1...self {
           f(i)
        }
    }
    func times(f:Void ->Void){
       print("Void")
        for _ in 1...self {
          f()
        }
    }
  
}