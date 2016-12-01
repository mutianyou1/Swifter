//
//  ProtocalArray.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/14.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit



protocol KittenLike {
    func mewo()-> String
}
protocol DogLike {
    func  mewo() -> Int
}
protocol TigerLike {
   func  auo() -> String
}

typealias petLike = protocol<KittenLike,DogLike>
typealias catLike = protocol<KittenLike,TigerLike>

//class static 在协议里面的用法
//class 中可以使用class为协议的静态标示 用static也行
protocol staticProtocal {
   static func foo() -> String
}
struct staticStruct:staticProtocal {
    static func foo() -> String {
        return "foo()"
    }
}
class ProtocalArray:petLike,staticProtocal {
    
    
    
    static func checkPetLike(petlike : petLike)  {
        
    }
 
    func mewo() -> String {
        return "mewo"
    }

    
    func mewo() -> Int {
        return Int.init(44)
    }
    func bark() -> String {
        return "bark"
    }
    
    class func foo() -> String {
        return "foo()"
    }
    

}
