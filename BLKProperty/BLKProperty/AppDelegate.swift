//
//  AppDelegate.swift
//  BLKProperty
//
//  Created by apple on 16/12/5.
//  Copyright © 2016年 CQZ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        trimmedString("ghcsbcidbveycvewycveuwyqvcewuceiqwbcoenwqc")
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()
        UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: false)
        goToFirstLaunchViewController()
        
        return true
    }
    
    //跳转去启动页面
    func goToFirstLaunchViewController() {
        
        let launchvc  = FirstLaunchViewController()
        UIApplication.shared.setStatusBarStyle(.lightContent, animated: false)
        self.window!.rootViewController = launchvc;
    }
    
    //直接登录成功
    func goToLoginSuccessViewController() {
        
    }
    
    func trimmedString(_ trimString : String) {
        
        var elementDictionary  = Dictionary<Character, Int>()
        
        for ch  in trimString.characters {
            
            let indexCounts  = elementDictionary[ch]
            
            if indexCounts != nil {
                
                elementDictionary[ch] = indexCounts! + 1
            } else {
                
                elementDictionary[ch] = 1
            }
        }
        
        var maxCount = 0
        
        elementDictionary.forEach { (key, value) in
            
        
            if (maxCount < value) {
                
                maxCount = value
            }
        }
        
        elementDictionary.forEach { (key, value) in
            
            if (value == maxCount) {
                
                print("最大的字符是: \(key)")
            }
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

