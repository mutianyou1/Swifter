//
//  DynamicType.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/15.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

class Pet_D {
    
}
class Cat_d : Pet_D {
    
}
class Dog_d : Pet_D {
    
}

func printPet(pet : Pet_D){
  print("pet")
}

func printPet(cat : Cat_d){
    print("cat")
}
func printPet(dog : Dog_d){
    print("dog")
}

func printThem(pet : Pet_D , _ cat : Cat_d){
//   printPet(pet)
//   printPet(cat)
    if let dog_ = pet as? Dog_d {
      printPet(dog_)
    }else if let cat_ = pet as? Cat_d {
      printPet(cat_)
    }else{
      printPet(pet)
    }
    printPet(cat)
}
