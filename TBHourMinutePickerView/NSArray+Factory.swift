//
//  NSArray+Factory.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension NSArray {
    
    static func arrayWithStringsOfRange(range: Range<Int> ) -> [String]
    {
        var stringArray = [String]()
        for i in range{
            if i > 9{
                stringArray.append("\(i)")
            }else{
                stringArray.append("0\(i)")
            }
        }
        
        return stringArray
        
    }
}
