//
//  Locale.swift
//  Package
//
//  Created by Serge Gainsbourg on 8/24/19.
//  Copyright © 2019 Serge Gainsbourg. All rights reserved.
//

import Foundation

public extension Locale {
    
    /// Unix representation of locale usually used for normalizing.
    static let posix = Locale(identifier: "en_US_POSIX")
}

public extension Locale {
    
    /// Returns the language name of the locale, or nil if has none.
    var languageName: String? {
        guard let code = languageCode else { return nil }
        return localizedString(forLanguageCode: code)
    }
    
    /// Returns the character direction for the current language code.
    var characterDirection: LanguageDirection {
        guard let code = languageCode else { return .unknown }
        return Locale.characterDirection(forLanguage: code)
    }
}
