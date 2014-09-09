//
//  ViewController.swift
//  FRDemoSwift
//
//  Created by Davut Can Abacigil on 09/09/14.
//  Copyright (c) 2014 Can Abacigil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var buttonLog: UIButton!
    @IBOutlet weak var textFieldLog: UITextField!
    @IBAction func logButtonTapped(sender: AnyObject) {
        
       
        // NOTE
        // You can call this method any time you want.
        // So, you can track your users behaviours and you can easily filter your sessions.
        // These methods make your sessions meaning ful.
        
        
        
        // Let's check text field is empty or not.
        if textFieldLog.text.isEmpty
        {
            
            // If it's empty, we will log it and flag it as "warning"
            
            FlightRecorder.sharedInstance().warningWithName("My custom log name", value: "No value")
            
        }
        else
        {
            // If it's not empty, we will also log it as an information.
            
            FlightRecorder.sharedInstance().logWithName("My custom log name", value: textFieldLog.text)
        }
        
        
        
        
        
        // NOTE
        // Track Events and get more meaning ful data.
        // Analyze events and filter sessions easily
        
          FlightRecorder.sharedInstance().trackEventWithCategory("UI Actions", action: "Button Tapped", label: "Log", value: nil)
        
    }
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // NOTE
        // Track Page Views and get more meaning ful data.
        // Analyze page views and filter sessions easily
        
        FlightRecorder.sharedInstance().trackPageView("Home View")
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        
        
        // For example;
        // If your app is received a memory warning 
        // You can log it and you may solve it.
        // FlightRecorder also automatically logs "Memory Warnings", but you may also add your custom logs.
        
        
        FlightRecorder.sharedInstance().warningWithName("Memory Warning", value: "Home View Received Memory Warning")
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

