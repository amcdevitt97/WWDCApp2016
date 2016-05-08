//
//  ViewController.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 8/3/15.
//  Copyright (c) 2015 Alyssa McDevitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Hello: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var swipe: UILabel!
    
    @IBAction func swipeGesture(sender: AnyObject) {
        performSegueWithIdentifier("initialTransition", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        Hello.center.x += view.bounds.width
        name.center.x += view.bounds.width
        swipe.center.x += view.bounds.width
        print(view.bounds.width)
    }
    
   override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //Animate labels
        UIView.animateWithDuration(0.7, animations: {
            self.Hello.center.x = self.view.bounds.width / 2
        })
        UIView.animateWithDuration(0.7, delay: 0.3, options: [], animations: {
            self.name.center.x = self.view.bounds.width / 2
            }, completion: nil)
        UIView.animateWithDuration(0.7, delay: 0.9, options: [], animations: {
            self.swipe.center.x = self.view.bounds.width / 2
            }, completion: nil)
    }
    
    
    


}

