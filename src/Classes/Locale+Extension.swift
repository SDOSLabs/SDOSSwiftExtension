//
//  GenericTypes.swift
//  SDOSSwiftExtensionSample
//
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation

public extension Locale {
    
    /// Locale with format Language-Country
    static var currentLocale: String {
        var locale = ""
        guard Locale.preferredLanguages.count > 0 else { return locale }
        
        var language = Locale.components(fromIdentifier: Locale.preferredLanguages[0])
        if let languageCode = language["kCFLocaleLanguageCodeKey"] {
            locale.append(languageCode)
        }
        if let languageCountry = language["kCFLocaleCountryCodeKey"] {
            locale.append("-\(languageCountry)")
        }
        return locale
    }
}
