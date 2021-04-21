//
//  NextResponderWhere.swift
//  UIResponderExtensionKit
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 21/4/21.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/MojtabaHosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.ir
//

import UIKit

public extension UIResponder {

    /// Returns the first next responder matching the given condition if exist.
    func firstNextResponder(where condition: (UIResponder) -> Bool ) -> UIResponder? {
        guard let next = next else { return nil }
        if condition(next) { return next }
        else { return next.firstNextResponder(where: condition) }
    }
}
