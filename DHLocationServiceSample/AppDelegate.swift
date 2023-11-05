//
//  AppDelegate.swift
//  DHLocationServiceSample
//
//  Created by David Hu on 5/11/23.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { granted, error in
//            if let error = error {
                // Handle the error here.
//            }
            // Enable or disable features based on the authorization.
        }
        return true
    }
}
