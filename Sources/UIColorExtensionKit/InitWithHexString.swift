//
//  InitWithHexString.swift
//  UIColorExtensionKit
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 7/4/21.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/MojtabaHosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.ir
//

import UIKit.UIColor

public extension UIColor {

    /// Returns a UIColor colors from the given hex strings.
    /// - The structure of the string should belike the following:
    /// - `#` (optional)
    /// - Red value
    /// - Blue value
    /// - Green value
    /// - Alpha value (optional)
    convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        var hexColor = hex

        // Remove the prefix it appears.
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            hexColor = String(hex[start...])
        }

            switch hexColor.count {
            case 8: // Contains alpha
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                } else {
                    assertionFailure("Can not scan Hex from the number")
                }
            case 6: // Alpha 100%
                let scanner = Scanner(string: hexColor + "ff")
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                } else {
                    assertionFailure("Can not scan Hex from the number")
                }

            default:
                assertionFailure("Invalid Hex Count")
            }
        }

        return nil
    }
}
