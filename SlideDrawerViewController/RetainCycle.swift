//
//  RetainCycle.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/17.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class CycleA {
   let b : CycleB
    init(){
       b = CycleB()
       b.a = self
    }
    deinit{
      print("a deinit")
    }
}

class CycleB {
   weak var  a : CycleA? = nil
    deinit{
      print("b deinit")
    }
}

class PersonForCycle {
    let name : String
    lazy var printName : () -> () = {
//      [weak self] in
//       if let strongSelf = self{
//           print("print person for cycle",strongSelf.name)
//        }
        [unowned self] in
        print(self.name)
    }
    lazy var printN:()->() = {[unowned self]()->()in
      print(self.name)
    }
    init(name :  String){
       self.name = name
    }
    deinit{
      print("person deinit")
    }
}
