//
//  NSDate+Manager.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension NSDate{
    class func dateByComponents(dateComponents: NSDateComponents) -> NSDate {
        let cal: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        cal.locale = NSLocale.currentLocale()
        let timeZone: NSTimeZone = NSTimeZone.localTimeZone()
        cal.timeZone = timeZone
        let date: NSDate = cal.dateFromComponents(dateComponents)!
        return date
    }
    
}
