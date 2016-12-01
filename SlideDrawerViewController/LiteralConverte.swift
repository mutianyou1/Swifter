//
//  LiteralConverte.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/10.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit


class Person {
    private  let name : String
    init(name value:String){
       self.name = value
    }
    //let b :Bool
    
   
}
extension Array {
    subscript(input : [Int]) -> ArraySlice<Element> {
        get{
           var result = ArraySlice<Element>()
            for i in input {
                assert(i < self.count, "index out of count")
                result.append(self[i])
            }
            return result
        }set{
            for (index ,i)in input.enumerate() {
                assert(i < self.count, "indext out of range")
                self[i] = newValue[index]
            }
        }
    }
}
class LiteralConverte: NSObject {

}

