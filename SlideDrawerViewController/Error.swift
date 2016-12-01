//
//  Error.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/28.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

enum LoginError:ErrorType {
   case UerNameNotFound,
   UerPasswordWrong
}

enum MyResult<T>{
  case success(T),
   Failure(NSError)
}

class FatalClass {
    func fatalMethod(){
       fatalError("sub class must implement")
    }
}

class SubFatalClass: FatalClass {
    override func fatalMethod() {
        print("sub class print object")
    }
}