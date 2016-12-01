//
//  MUControl.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/9.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit


//protocol 可适用于enum
protocol MUTargetAction {
    func performAction()
}
enum ControlEvent{
   case TouchUpInSide
   case ValueChanged
}
struct MUTargetActionWrapper< T:AnyObject> :MUTargetAction{
    weak var target:T?
    let action :(T) -> (num:Int) -> ()
    
    
    
    func performAction() {
        if let t = target {
            action(t)(num:3)
            print(t)
        }
    }
    
    
}


//struct mutable

struct user {
    var age:Int
    var weight:Int
    var height:Int
    
    mutating func gainWeight(newWeight:Int){
        weight += newWeight
    }
}

//protocal mutating class可以随意改变自己的成员变量
protocol Vehicel {
    var numberOfWheels : Int{get}
    var color :UIColor{get set}
    mutating func changeColor()
}
struct MyCar:Vehicel {
    var numberOfWheels : Int
    var color = UIColor.redColor()
    //weak var:Vehicel
    
    mutating func changeColor() {
        color = UIColor.blackColor()
    }
    
}
class MUControl: UIControl {
    var actions = [ControlEvent : MUTargetAction]()
    
    func setTarget<T:AnyObject>(target:T,action:(T)->(num:Int)->(),controlEvent:ControlEvent){
       
        actions[controlEvent]  = MUTargetActionWrapper(target: target, action: action)
    }
    func removeTargetOfAction(controlEvent:ControlEvent){
         actions[controlEvent] = nil
    }

    func performAction(controlEvent:ControlEvent){
       actions[controlEvent]?.performAction()
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    

}
