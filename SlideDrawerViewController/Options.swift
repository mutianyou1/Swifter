//
//  Options.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation


struct MyOptions : OptionSetType {
   
    let rawValue : Int
    static let None = MyOptions.init(rawValue: 0)
    static let Option1 = MyOptions.init(rawValue: 1)
    static let Option2 = MyOptions.init(rawValue: 1<<1)
    static let Option3 = MyOptions.init(rawValue: 1<<2)
    static let Option4 = MyOptions.init(rawValue: 1<<3)
}