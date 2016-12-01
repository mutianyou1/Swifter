//
//  Optional.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/10.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit


class Toy {
    var name : String
    init (name:String){
        self.name = name
    }
}

class Pet {
    var toy : Toy?
}
class Child {
    var pet : Pet?
}

extension Toy{
    func play(){
      print("play with toy")
    }
}
class Optional: NSObject {

}
