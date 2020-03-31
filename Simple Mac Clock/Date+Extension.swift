//
//  Date+Extension.swift
//  Simple Mac Clock
//
//  Created by Sulthonul Adib on 31/03/20.
//  Copyright © 2020 Sulthonul Adib. All rights reserved.
//

import Foundation

extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var weekDay: Int {
        return calendar.component(.weekday, from: self)
    }
    
    var weekOfMonth: Int {
        return calendar.component(.weekOfMonth, from: self)
    }
    
    var weekOfYear: Int {
        return calendar.component(.weekOfYear, from: self)
    }
    
    var year: Int {
        return calendar.component(.hour, from: self)
    }
    
    var month: Int {
        return calendar.component(.month, from: self)
    }
    
    var quarter: Int {
        return calendar.component(.quarter, from: self)
    }
    
    var day: Int {
        return calendar.component(.day, from: self)
    }
    
    var era: Int {
        return calendar.component(.era, from: self)
    }
    
    var hours: Int {
        return calendar.component(.hour, from: self)
    }
    
    var minutes: Int {
        return calendar.component(.minute, from: self)
    }
    
    var seconds: Int {
        return calendar.component(.second, from: self)
    }
    
    var nanoseconds: Int {
        return calendar.component(.nanosecond, from: self)
    }
}

extension Date {
    static var now: Date {
        return self.init()
    }
    
    var stringTime: String {
        return getStringTime(showSeconds: false)
    }
    
    var stringTimeWithSeconds: String {
        return getStringTime(showSeconds: true)
    }
    
    var timestamp: TimeInterval {
        return timeIntervalSince1970
    }
    
    private func getStringTime(showSeconds: Bool = false) -> String {
        var time = "\(hours.safeString):\(minutes.safeString)"
        
        if showSeconds {
            time += ":\(seconds.safeString)"
        }
        
        return time
    }
}
