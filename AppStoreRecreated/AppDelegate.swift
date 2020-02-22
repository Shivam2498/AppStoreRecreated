//
//  AppDelegate.swift
//  AppStoreRecreated
//
//  Created by Shivam Choudhary on 22/02/20.
//  Copyright © 2020 Shivam Choudhary. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        let featuredAppsController = FeaturedAppsController(collectionViewLayout: layout)
        window?.rootViewController = UINavigationController.init(rootViewController:featuredAppsController)
        return true
    }

}

