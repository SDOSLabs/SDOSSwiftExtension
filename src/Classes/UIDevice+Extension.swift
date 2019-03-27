//
//  GenericTypes.swift
//  SDOSSwiftExtensionSample
//
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation
import UIKit

public extension UIDevice {
    var deviceInformation: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let modelCode = withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                ptr in String.init(validatingUTF8: ptr)
                
            }
        }
        return "\(modelCode ?? "")||\(self.systemName)||\(self.systemVersion)"
    }
}
