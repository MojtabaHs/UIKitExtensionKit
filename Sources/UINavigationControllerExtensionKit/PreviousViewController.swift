//
//  PreviousViewController.swift
//  UINavigationControllerExtensionKit
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

public extension UINavigationController {

    /// Returns the controller before the `TopViewController` if there is any.
    var previousViewController: UIViewController? { viewControllers.last { $0 != topViewController } }
}
