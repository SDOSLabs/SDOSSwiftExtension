//
//  GenericTypes.swift
//  SDOSSwiftExtensionSample
//
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation
import UIKit

public extension UIApplication {
    static var version: String? {
        var result: String?
        if let dicitonary = Bundle.main.infoDictionary {
            result = dicitonary["CFBundleShortVersionString"] as? String
        }
        return result
    }
}
