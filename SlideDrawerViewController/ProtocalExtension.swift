//
//  ProtocalExtension.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/16.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation


protocol A_ {
   func methodA() ->String
}
protocol B_ {
   func methodB()->String
}

extension B_ {
    func methodB()->String {
      return "B"
   }
    func methodA() -> String {
        return "A"
    }
}
struct ProtocalExampleB : B_ {
    func methodB()->String {
        return "B+"
    }
    func methodA() -> String {
        return "A+"
    }
}
struct ProtocalExample : A_ {
    func methodA() -> String {
        return "A"
    }
}



protocol ProtocalExtension {
   func method()
}
extension ProtocalExtension {
    func method(){
      print("method have been executed")
    }
}