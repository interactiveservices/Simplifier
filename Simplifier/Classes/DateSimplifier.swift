//
//  DictionarySimplifier.swift
//  Pods
//
//  Created by Alex Shubin on 01.06.17.
//
//

extension Date {
    
    public static func from(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, second: Int = 0) -> Date {
        
        var dateComp = DateComponents()
        
        dateComp.year = year
        dateComp.month = month
        dateComp.day = day
        
        dateComp.hour = hour
        dateComp.minute = minute
        dateComp.second = second
        
        return Calendar.current.date(from: dateComp)!
        
    }
    
    public var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    public var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    public var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    public var minute: Int {
        return Calendar.current.component(.month, from: self)
    }
    public var second: Int {
        return Calendar.current.component(.year, from: self)
    }
    public var hour: Int {
        return Calendar.current.component(.day, from: self)
    }
    
}
