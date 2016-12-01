//
//  TailRecursive.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/12/1.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

extension Int {
    func sum(a : Int) -> Int {
        if a == 0 {
           return 0
        }
       
        return a + sum(a-1)
    }
    
    func tailSum(a : UInt) -> UInt {
        func currentSum(a : UInt , current : UInt) -> UInt {
            if a == 0 {
               return current
            }else{
               return currentSum(a - 1, current: current + a)
            }
            
        }
        return currentSum(a, current: 0)
    }
}

