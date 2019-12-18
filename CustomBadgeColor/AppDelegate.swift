//
//  AppDelegate.swift
//  CustomBadgeColor
//
//  Created by Henrique Valcanaia on 2019-12-16.
//  Copyright © 2019 Henrique Valcanaia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

protocol ViewControllerWithTabBarItemBadge {
    func showTabBarItemBadge(_ shouldShow: Bool)
}

extension ViewControllerWithTabBarItemBadge where Self: UIViewController {
    func showTabBarItemBadge(_ shouldShow: Bool) {
        self.tabBarItem.badgeColor = .yellow
        if shouldShow {
            self.tabBarItem.badgeValue = ""
        } else {
            self.tabBarItem.badgeValue = nil
        }
    }
}
