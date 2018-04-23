//
//  AppDelegate.swift
//  Buro_beauty
//
//  Created by Ivan Litvinov on 3/24/18.
//  Copyright © 2018 Ivan Litvinov. All rights reserved.
//

import UIKit
import CoreData
import MessageUI
import Firebase
import FirebaseAuth

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
} //end class
