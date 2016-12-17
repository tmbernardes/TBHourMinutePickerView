//
//  NSDate+Manager.swift
//  TBHourMinutePickerView
//
//  Created by Thiago-Bernardes on 1/26/16.
//  Copyright © 2016 TMB. All rights reserved.
//

extension Date{
    static func dateByComponents(_ dateComponents: DateComponents) -> Date {
        var cal: Calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        cal.locale = Locale.current
        let timeZone: TimeZone = TimeZone.autoupdatingCurrent
        cal.timeZone = timeZone
        let date: Date = cal.date(from: dateComponents)!
        return date
    }
    
}
