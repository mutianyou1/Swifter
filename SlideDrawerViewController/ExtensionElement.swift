//
//  ExtensionElement.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/12/1.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

extension  Array {
    var random : Element? {
        return self.count > 0 ? self[Int(arc4random_uniform(UInt32(self.count)))] : nil
    }
    
    func appendRandomDescription< U : CustomStringConvertible>(input : U)-> String{
        if let element = self.random {
           return "\(element)"+input.description
        }else{
           return "empty array"
        }
    }
    //var end<TKK>  :TKK?
}