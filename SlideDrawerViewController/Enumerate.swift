//
//  Enumerate.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/12/1.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation

//static 属性来获取枚举的数据结构
protocol EnumeratableEnumType {
    static var allValues : [Self] {get}
}

enum Suit : String {
   case Spades = "♠️"
   case Hearts = "♥️"
   case Clubs = "♣️"
   case Diamonds = "♦️"
}

enum Ranks : Int , RawRepresentable {
   case Ace = 1
   case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
   case Jack,Queen,King
    var description : String {
        switch self {
        case .Ace:
            return "A"
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King :
            return "K"
        default:
            return String(self.rawValue)
        }
    }
}

extension Suit : EnumeratableEnumType {
      static var allValues : [Suit] {
      return [Suit.Spades,Suit.Hearts,Suit.Clubs,Suit.Diamonds]
    }
}

extension Ranks : EnumeratableEnumType {
     static var allValues : [Ranks] {
      return [Ranks.Two,Ranks.Three,Ranks.Four,Ranks.Five,Ranks.Six,Ranks.Seven,Ranks.Eight,Ranks.Nine,Ranks.Ten,Ranks.Jack,Ranks.Queen,Ranks.King,Ranks.Ace]
    }
}