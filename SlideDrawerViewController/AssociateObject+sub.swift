//
//  AssociateObject+sub.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/25.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

private var  key : Void?

extension  AssociateObject {
    var title : String?{
    
        get {
           return objc_getAssociatedObject(self, &key) as? String
        }
        set {
           objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}