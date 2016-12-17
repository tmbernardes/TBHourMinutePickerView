//
//  NSDateComponents+Manager.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension DateComponents{
    static func dateComponentsFrom(_ originalDate: Date) -> DateComponents {
        var cal: Calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        cal.locale = Locale.current
        let timeZone: TimeZone = TimeZone.autoupdatingCurrent
        cal.timeZone = timeZone
        var convertedDateComponents = DateComponents()
        (convertedDateComponents as NSDateComponents).timeZone = timeZone
        if originalDate != nil{
            convertedDateComponents = (cal as NSCalendar).components( [.year, .month, .day, .hour, .minute], from: originalDate)
        }
        else {
            convertedDateComponents = (cal as NSCalendar).components( [.year, .month, .day, .hour, .minute], from: Date())
        }
        return convertedDateComponents
    }
    
}
