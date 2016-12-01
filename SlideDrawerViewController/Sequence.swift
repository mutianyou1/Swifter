//
//  Sequence.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/9.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit


class ReverseGenerator:GeneratorType {
    typealias Element  = Int
    
    var counter :Element
    init<T>(array:[T]){
       self.counter = array.count - 1
    }
    
    init(start:Int){
       self.counter = start
    }
    func next() -> Element? {
        return self.counter < 0 ? nil : counter--
    }
}

struct ReverseSequece<T>:SequenceType{
    var array :[T]
    init (array : [T]){
        self.array = array
    }
    typealias Generator  = ReverseGenerator
    func generate() -> Generator {
        return ReverseGenerator(array: self.array)
    }
    
    
    
    
}
class Sequence: NSObject {
    
    

}


