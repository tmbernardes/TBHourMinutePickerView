//
//  NSArray+Factory.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension NSArray {
    
    static func arrayWithStringsOfRange(_ range: Range<Int> ) -> [String]
    {
        var stringArray = [String]()
		let newRange = [Int](range.lowerBound..<range.upperBound)
		
        for i in newRange{
            if i > 9{
                stringArray.append("\(i)")
            }else{
                stringArray.append("0\(i)")
            }
        }
        
        return stringArray
        
    }
}
