//
//  Calendar.swift
//  Package
//
//  Created by Serge Gainsbourg on 8/24/19.
//  Copyright © 2019 Serge Gainsbourg. All rights reserved.
//

import Foundation

public extension Calendar {
    
    /// Returns a new Calendar.
    ///
    /// - parameter identifier: The kind of calendar to use.
    /// - parameter timeZone: The time zone of the calendar.
    /// - parameter locale: The locale of the calendar.
    init(identifier: Identifier, timeZone: TimeZone?, locale: Locale?) {
        self.init(identifier: identifier)
        
        if let timeZone = timeZone {
            self.timeZone = timeZone
        }
        
        if let locale = locale {
            self.locale = locale
        }
    }
    
    /// Returns a new Calendar.
    ///
    /// - parameter identifier: The kind of calendar to use.
    /// - parameter timeZone: The time zone of the calendar.
    init(identifier: Identifier, timeZone: TimeZone?) {
        self.init(identifier: identifier, timeZone: timeZone, locale: nil)
    }
    
    /// Returns a new Calendar.
    ///
    /// - parameter identifier: The kind of calendar to use.
    /// - parameter locale: The locale of the calendar.
    init(identifier: Identifier, locale: Locale?) {
        self.init(identifier: identifier, timeZone: nil, locale: locale)
    }
}

public extension Calendar.Component {
    
    /// The set component units of date that includes year, month, day, hour, minute, and second
    static let full: Set<Calendar.Component> = [.year, .month, .day, .hour, .minute, .second]
}
