//
//  SecondViewController.swift
//  CustomBadgeColor
//
//  Created by Henrique Valcanaia on 2019-12-16.
//  Copyright © 2019 Henrique Valcanaia. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController, ViewControllerWithTabBarItemBadge {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showTabBarItemBadge(true)
    }
    
    @IBAction func toggleSwitch(_ sender: Any) {
        guard let enableBadgeSwitch = sender as? UISwitch else {
            return
        }
        
        self.showTabBarItemBadge(enableBadgeSwitch.isOn)
    }
}
