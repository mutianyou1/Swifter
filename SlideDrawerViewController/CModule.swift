//
//  CModule.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/11/24.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import Foundation


extension String {

    var MD5 : String {
    
        let cString = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let length = CUnsignedInt(
           self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
        )
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(
           Int(CC_MD5_DIGEST_LENGTH)
        )
        
    
        CC_MD5(cString!, length, result)
       
        
        return String(format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", arguments: [result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]])
    }

}

extension Double {
    func format(f:String)->String {
       return String.init(format: "%\(f)f", arguments: [self])
    }
}


