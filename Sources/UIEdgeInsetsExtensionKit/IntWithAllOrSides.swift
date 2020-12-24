//
//  Init.swift
//  UIEdgeInsetsExtensionKit
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 7/4/20.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/MojtabaHosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.ir
//

public extension UIEdgeInsets {

    /// Initial all sides of an edge insets at once.
    /// - Parameter value: A value for all edges.
    public init(all value: CGFloat) {
        self.init(horizontal: value, vertical: value)
    }

    /// Initial an edge insets at by the direction.
    /// - Parameters:
    ///   - horizontal: A value for all the left and right edges.
    ///   - vertical: A value for all the top and bottom edges.
    public init(horizontal: CGFloat = 0, vertical: CGFloat = 0) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
}
