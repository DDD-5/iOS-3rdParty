//
//  AppDelegate.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/01.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let pageVC = PagesViewController(transitionStyle: .scroll,
                                        navigationOrientation: .horizontal,
                                        options: nil)
        window?.rootViewController = pageVC
        window?.makeKeyAndVisible()
        
        
        return true
    }


}

