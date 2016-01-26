//
//  NSDateComponents+Manager.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension NSDateComponents{
    static func dateComponentsFrom(originalDate: NSDate) -> NSDateComponents {
        let cal: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        cal.locale = NSLocale.currentLocale()
        let timeZone: NSTimeZone = NSTimeZone.localTimeZone()
        cal.timeZone = timeZone
        var convertedDateComponents = NSDateComponents()
        convertedDateComponents.timeZone = timeZone
        if !originalDate.isEqual(nil){
            convertedDateComponents = cal.components( [.Year, .Month, .Day, .Hour, .Minute], fromDate: originalDate)
        }
        else {
            convertedDateComponents = cal.components( [.Year, .Month, .Day, .Hour, .Minute], fromDate: NSDate())
        }
        return convertedDateComponents
    }
    
}
