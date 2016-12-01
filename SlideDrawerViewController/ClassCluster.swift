//
//  ClassCluster.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation
import UIKit

class Drinking {
    typealias LiquidColor = UIColor
    
    var color : LiquidColor {
       return LiquidColor.clearColor()
    }
    
    class func drinking(name : String) ->Drinking {
        var drinking : Drinking = Drinking()
        switch name {
          case "Coke":
            drinking = Coke()
          case "Beer":
            drinking = Beer()
          default:
            break;
        }
        return drinking
    }
}

class Coke: Drinking {
    override var color : LiquidColor {
      return LiquidColor.blackColor()
    }
}

class Beer: Drinking {
    override var color : LiquidColor {
      return LiquidColor.yellowColor()
    }
}