//
//  SecondViewController.swift
//  FRDemoSwift
//
//  Created by Davut Can Abacigil on 09/09/14.
//  Copyright (c) 2014 Can Abacigil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    

    
    @IBAction func dismissTapped(sender: AnyObject) {
        
        // NOTE
        // Track Events and get more meaning ful data.
        // Analyze events and filter sessions easily
        
        FlightRecorder.sharedInstance().trackEventWithCategory("UI Actions", action: "Button Tapped", label: "Dismiss", value: nil)
        
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        
        // Assume that we request an API call here and we want to log it with FlightRecorder
        // Example :
        
        FlightRecorder.sharedInstance().logAPIRequestWithName("My API Call", url: "/user/get/1000", httpMethod: "POST", requestBody: nil, requestHeaders: nil, responseStatusCode: 500, responseString: "Internal Server Error", responseHeaders: nil)
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // NOTE
        // Track Page Views and get more meaning ful data.
        // Analyze page views and filter sessions easily
        
        FlightRecorder.sharedInstance().trackPageView("Home View")
        
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
