//
//  SoftRoundCorners.swift
//  CALayerExtensionKit
//
//  Created by Seyed Mojtaba Hosseini Zeidabadi on 7/4/20.
//  Copyright © 2020 Chenzook. All rights reserved.
//
//  StackOverflow: https://stackoverflow.com/story/MojtabaHosseini
//  Linkedin: https://linkedin.com/in/MojtabaHosseini
//  GitHub: https://github.com/MojtabaHs
//  Web: https://chenzook.ir
//

import UIKit

public extension CALayer {

    /// Round given corners with the super ellipse formula.
    /// - Parameter radius: The roundness of corners.
    ///
    /// - Note: This method will not update automatically on layer changes. You should consider updating it manually.
    func softRoundCorners(radius: CGFloat, corners: UIRectCorner = .allCorners) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: bounds,
                                      byRoundingCorners: corners,
                                      cornerRadii: .init(width: radius, height: radius)).cgPath
        mask = maskLayer
    }
}
