//
//  DateFormatter.swift
//  Package
//
//  Created by Serge Gainsbourg on 8/24/19.
//  Copyright © 2019 Serge Gainsbourg. All rights reserved.
//

import Foundation

public extension DateFormatter {
    
    /// A formatter that converts between dates and their ISO 8601 string representations.
    ///
    /// When `JSONEncoder` accepts a custom `ISO8601DateFormatter`, this convenience initializer will no longer be needed.
    ///
    /// - Parameter dateFormat: The date format string used by the receiver.
    convenience init(iso8601Format dateFormat: String) {
        self.init()
        
        self.calendar = Calendar(identifier: .iso8601)
        self.locale = .posix
        self.timeZone = .posix
        self.dateFormat = dateFormat
    }
}

public extension DateFormatter {
    
    /// Create a date formatter.
    ///
    /// - Parameters:
    ///   - dateFormat: The date format string used by the receiver.
    ///   - timeZone: The time zone for the receiver.
    ///   - calendar: The calendar for the receiver.
    ///   - locale: The locale for the receiver.
    convenience init(dateFormat: String, timeZone: TimeZone? = nil, calendar: Calendar? = nil, locale: Locale? = nil) {
        self.init()
        
        self.dateFormat = dateFormat
        
        if let timeZone = timeZone {
            self.timeZone = timeZone
        }
        
        if let calendar = calendar {
            self.calendar = calendar
        }
        
        if let locale = locale {
            self.locale = locale
        }
    }
    
    /// Create a date formatter.
    ///
    /// - Parameters:
    ///   - dateStyle: The date style of the receiver.
    ///   - timeStyle: The time style of the receiver.
    ///   - timeZone: The time zone for the receiver.
    ///   - calendar: The calendar for the receiver.
    ///   - locale: The locale for the receiver.
    convenience init(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style? = nil, timeZone: TimeZone? = nil, calendar: Calendar? = nil, locale: Locale? = nil) {
        self.init()
        
        self.dateStyle = dateStyle
        
        if let timeStyle = timeStyle {
            self.timeStyle = timeStyle
        }
        
        if let timeZone = timeZone {
            self.timeZone = timeZone
        }
        
        if let calendar = calendar {
            self.calendar = calendar
        }
        
        if let locale = locale {
            self.locale = locale
        }
    }
}
