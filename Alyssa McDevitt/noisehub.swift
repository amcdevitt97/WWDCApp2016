//
//  noisehub.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 4/9/16.
//  Copyright © 2016 Alyssa McDevitt. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class noisehub: UIViewController {
    
    private var firstAppear = true
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    
    @IBAction func videoClicked(sender: AnyObject){
        UIApplication.sharedApplication().openURL(NSURL(string: "https://youtu.be/6qDhqAcOjR4")!)
    }
    
}

