//
//  CoreData.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/12/1.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation
import CoreData

//@NSManaged表示动态init 向编译起保证会动态创建初始化方法
class CoreData: NSManagedObject {
    @NSManaged var title : String
}