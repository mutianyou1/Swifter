//
//  Node.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/16.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation


class Node<T> {
    let value : T?
    let next : Node<T>?
    
    
    init(value : T?, next : Node<T>?){
       self.value = value
       self.next = next
    }
}

//indirect 不要直接在值类型嵌套
indirect enum LinkedList<Element : Comparable>{
   case Empty
   case Node(Element,LinkedList<Element>)
    
    
    //guard 模式将不符合的情况剔除直接return 符合条件自动解包
    func linkedListByRemovingElement(element : Element) -> LinkedList<Element> {
        
        guard  case let .Node(value,next) = self else {
          return .Empty
        }
        print(value,element,next,"---self",self)
        return value == element ? next : LinkedList.Node(value,next.linkedListByRemovingElement(element))
    }
    
}


