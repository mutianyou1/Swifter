//
//  InitMethod.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/14.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit


class Cat {
    var name :String
    init(){
       name = "cat"
       print("cat init")
    }
}
class Tigger: Cat {
    let power:Int
    override init(){
      power = 20
      print("power ")
//      super.init()
//      name = "tiger"
//      print("tigger name")
        //调用顺序：
        /*
        1、自身属性初始化
        2、父类初始化方法
        3、修改父类属性
        
        如果不需要修改父类属性则不需要调用
        系统自动调用初始化
        */
    }
}
class classA {
    let numA : Int
    required  init(num : Int){
      numA = num
    }
    /*
    convenience 二等初始化调用方法必须调用本生的designated初始化方法
    不能被子类重写和super调用，但如果子类重写了designated方法那么子类
    可以调用
    */
  required  convenience init(BigNum : Bool){
        self.init(num:BigNum ? 1000 : 0)
    }
}
class classB: classA {
    let numB : Int
    
    //init swift超级严格的初始化调用 不加修饰符的init必须初始化
    //非可选值，子类中也强制调用父类的designated初始化
    //init只会调用一次，所以对let值赋值，线程是安全的
     required  init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
    
   
}
//可失败的初始化器
extension Int {
    init?(fromString:String){
      self = 0
      var digit = fromString.characters.count - 1
        for c in fromString.characters {
          
            var number = 0
            if let n = Int(String(c)){
                number = n
            }else{
                switch c {
                  case "一":number = 1
                  case "二":number = 2
                  case "三":number = 3
                  case "四":number = 4
                  case "五":number = 5
                  case "六":number = 6
                  case "七":number = 7
                  case "八":number = 8
                  case "九":number = 9
                  case "零":number = 0
                  default: return nil
                }
           
               self = self + number * Int(pow(10, Double(digit)))
               digit--
            }
            
        }
    }
}
class InitMethod: NSObject {
    
}
