//
//  AppDelegate.swift
//  MathMonsters
//
//  Created by Tiago Do Couto on 12/11/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        guard let splitViewController = window?.rootViewController as? UISplitViewController,
            let leftNavController = splitViewController.viewControllers.first as? UINavigationController,
            let masterViewController = leftNavController.topViewController as? MasterVC,
            let rightNavController = splitViewController.viewControllers.last as? UINavigationController,
            let detailViewController = rightNavController.topViewController as? DetailVC
            else { fatalError() }
        
        let firstMonster = masterViewController.monsters.first
        detailViewController.monster = firstMonster
        
        masterViewController.delegate = detailViewController
        
        detailViewController.navigationItem.leftItemsSupplementBackButton = true
        detailViewController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        
        return true
    }
}

