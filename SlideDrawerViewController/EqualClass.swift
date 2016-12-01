//
//  EqualClass.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class TODOItem {
    let uuid : String
    var title : String
    
    init(title : String , uuid : String){
      self.title = title
      self.uuid = uuid
    }
}
func ==(lhs: TODOItem, rhs: TODOItem) -> Bool{
    return lhs.uuid == rhs.uuid
}
extension TODOItem : Equatable {
    
    
}