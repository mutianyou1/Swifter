//
//  Operate.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/10.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit
//infix 表示定义中位操作符 前后都是输入
typealias Location = CGPoint
typealias Distance = Double

infix operator +* {
   associativity none //结合律
   precedence 160    //优先级 ＋ 140 ＊ 150
}

struct Vector2D {
    var x = 0.0
    var y = 0.0
    
}

func +(left:Vector2D,right:Vector2D) ->Vector2D{
     return Vector2D(x: left.x + right.x, y: right.y+left.y)
}
func +*(left:Vector2D,right:Vector2D) ->Double{
    return left.x * right.x + right.y * left.y
}

func distanceBetweenPoint(location : Location, toLocation :Location ) ->Distance {
   let dx = Distance(location.x - toLocation.x)
   let dy = Distance(location.y - toLocation.y)
   return sqrt(dx * dx + dy * dy)
}
class Operate: NSObject {
    
    static func getDistance() {
        let origin : Location = Location(x: 3, y: 8)
        let point : Location = Location(x: 3, y: 18)
        
        print(distanceBetweenPoint(origin, toLocation: point))
    }
}
