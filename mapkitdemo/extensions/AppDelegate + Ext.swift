//
//  AppDelegate + Ext.swift
//  mapkitdemo
//
//  Created by Mark Hoath on 3/5/18.
//  Copyright © 2018 Mark Hoath. All rights reserved.
//

import UIKit

extension AppDelegate {
    
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
