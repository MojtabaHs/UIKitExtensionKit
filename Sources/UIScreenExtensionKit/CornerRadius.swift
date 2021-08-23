//
//  NextResponderWhere.swift
//  UIResponderExtensionKit
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 23/8/21.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/MojtabaHosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.ir
//

import UIKit

public extension UIScreen {

    /// The private key for the corner radius of the display.
    private static let cornerRadiusKey: String = {
        let components = ["Radius", "Corner", "display", "_"]
        return components.reversed().joined()
    }()

    /// The corner radius of the screen
    var cornerRadius: CGFloat {
        /// The corner radius of the display. Uses a private property of `UIScreen`,
        /// and may report 0 if the API changes.
        if let cornerRadius = self.value(forKey: Self.cornerRadiusKey) as? CGFloat {
            return cornerRadius
        } else {
            assertionFailure("Private API changed")
            if hasRoundedCorners {
                return 38.5
            } else {
                return 0
            }
        }
    }

    /// Returns if the screen has rounded corners
    var hasRoundedCorners: Bool {
        if #available(iOS 11.0, tvOS 11.0, *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets.bottom ?? 0 > 0
        } else {
            return false
        }
    }
}
