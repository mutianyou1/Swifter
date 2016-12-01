//
//  SingleTon.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/16.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation





class SingleClass {
    
    static let singleInstance = SingleClass()
    
    private init(){
       
    }
    
   // private  let singleInstance = SingleClass()
    
    //两种方式
    static  func getInstance() ->SingleClass {
      return singleInstance
    }
    
    

    
    
}