//
//  RegexHelper.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/14.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

infix operator =~ {
   associativity none
   precedence 130
}

func =~(lhs:String,rhs:String) -> Bool{
    do{
     return try RegexHelper.init(rhs).match(lhs)
    }catch{
      return false
    }
}
prefix operator /> {

}


prefix func />(pattern : String) throws -> NSRegularExpression{
    return try NSRegularExpression(pattern: pattern, options: [])
}

func ~=(patther:NSRegularExpression,input:String) -> Bool{
    return patther.matchesInString(input, options:[], range: NSMakeRange(0, input.characters.count - 1)).count > 0
}

/*
switch case 原理采用 a case b －－》 a ~= b 模糊匹配的方式
*/
struct RegexHelper {
    let regular :NSRegularExpression
    
    init(_ pattern : String) throws {
     try regular = NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
    }
    
    func match(input : String) -> Bool {
       let matchs = regular.matchesInString(input, options: [], range: NSMakeRange(0, input.characters.count - 1))
        return matchs.count > 0
    }
}






