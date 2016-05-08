//
//  video.swift
//  Alyssa McDevitt
//
//  Created by Alyssa McDevitt on 1/21/16.
//  Copyright © 2016 Alyssa McDevitt. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class video: UIViewController {
    
    private var firstAppear = true
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
     
    }
    
    @IBAction func videoClicked(sender: AnyObject) {
        if firstAppear {
            do {
                try playVideo()
                firstAppear = false
            } catch AppError.InvalidResource(let name, let type) {
                debugPrint("Could not find resource \(name).\(type)")
            } catch {
                debugPrint("Generic error")
            }
            
        }
    }
    
    private func playVideo() throws {
        guard let path = NSBundle.mainBundle().pathForResource("WWDC", ofType:"m4v") else {
            throw AppError.InvalidResource("WWDC", "m4v")
        }
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.presentViewController(playerController, animated: true) {
            player.play()
        }
    }
}

enum AppError : ErrorType {
    case InvalidResource(String, String)
}