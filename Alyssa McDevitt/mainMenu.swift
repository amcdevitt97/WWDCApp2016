//
//  mainMenu.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 4/1/16.
//  Copyright © 2016 Alyssa McDevitt. All rights reserved.
//

import Foundation

import UIKit

class mainMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
