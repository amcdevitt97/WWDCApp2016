//
//  meController.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 4/28/16.
//  Copyright © 2016 Alyssa McDevitt. All rights reserved.
//

import Foundation
import UIKit

class meController: UIViewController{
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    @IBAction func mySite(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://alyssamcdevitt.me")!)
    
    }
    
    @IBAction func noiseHub(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://noisehub.co")!)
    
    }
    
    


}

