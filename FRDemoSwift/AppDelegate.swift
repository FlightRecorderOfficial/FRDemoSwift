//
//  AppDelegate.swift
//  FRDemoSwift
//
//  Created by Davut Can Abacigil on 09/09/14.
//  Copyright (c) 2014 Can Abacigil. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
         // Override point for customization after application launch.
        
    
    
        /*
        
        # HOW TO INTEGRATE FLIGHTRECORDER
        
        1 - ) We created a file and added it to this project( Umberalla-Bridging-Header.h ) to import FlightRecorder.h file
        2 - ) We need that file because FlightRecorder framework is written in Objective-C, it's the way to import an Objective-C file into Swift
        3 - ) We modified "Build Settings -> Objective-C Bridging Header" and set it to "FRDemoSwift/Umberalla-Bridging-Header.h" as path.
        4 - ) Now you can reach FlightRecorder public headers.
        5 - ) Also you may want to add other frameworks to "Umberalla-Bridging-Header.h" if you need.
        6 - ) These access and secret key belong to a demo account. You can visit flightrecorder.co and go to login.
        7 - ) Username : demo@flightrecorder.co and password : 1234
        8 - ) Select "My Another App" from app list and wait for your session. It takes 3-4 minutes.
        
        IMPORTANT : How to finish a session or when will the session be ready for watching?
        
        See : http://help.flightrecorder.co/knowledgebase/how-to-finish-a-session-or-when-will-the-session-be-ready-for-watching/
        
        */
        
        
        FlightRecorder.sharedInstance().setAccessKey("a0ad4a02-3e20-4f5f-be9a-8e0b6514885c", secretKey: "0d67cb69-c306-49cb-af8a-93846dcf8dc2")
        FlightRecorder.sharedInstance().shouldStartLocationManager = true
        FlightRecorder.sharedInstance().quality = FE_QUALITY_MEDIUM
        FlightRecorder.sharedInstance().startFlight()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

