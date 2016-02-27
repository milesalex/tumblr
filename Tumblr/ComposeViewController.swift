//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Alex Miles on 2/25/16.
//  Copyright © 2016 Dropbox. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    

    @IBOutlet weak var textIcon: UIButton!
    @IBOutlet weak var photoIcon: UIButton!
    @IBOutlet weak var videoIcon: UIButton!
    @IBOutlet weak var quoteIcon: UIButton!
    @IBOutlet weak var chatIcon: UIButton!
    @IBOutlet weak var linkIcon: UIButton!
    @IBOutlet var composeView: UIView!
    
    var textIconOriginalPosition: CGPoint!
    var photoIconOriginalPosition: CGPoint!
    var videoIconOriginalPosition: CGPoint!
    var quoteIconOriginalPosition: CGPoint!
    var chatIconOriginalPosition: CGPoint!
    var linkIconOriginalPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        textIconOriginalPosition = textIcon.frame.origin
        photoIconOriginalPosition = photoIcon.frame.origin
        videoIconOriginalPosition = videoIcon.frame.origin
        quoteIconOriginalPosition = quoteIcon.frame.origin
        chatIconOriginalPosition = chatIcon.frame.origin
        linkIconOriginalPosition = linkIcon.frame.origin
        
        textIcon.frame.origin.y = 600
        photoIcon.frame.origin.y = 600
        videoIcon.frame.origin.y = 600
        quoteIcon.frame.origin.y = 600
        chatIcon.frame.origin.y = 600
        linkIcon.frame.origin.y = 600
        
        composeView.alpha = 0
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let time = 0.3
        let damping: CGFloat! = 0.7
        let delay = 0.05
        
        // Fade in compose vew
        UIView.animateWithDuration(time, animations: { () -> Void in
            self.composeView.alpha = 1
        }, completion: { finished in
            
            UIView.animateWithDuration(time, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.textIcon.frame.origin.y = self.textIconOriginalPosition.y
            }, completion: nil)
            
            UIView.animateWithDuration(time, delay: delay * 1, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.photoIcon.frame.origin.y = self.photoIconOriginalPosition.y
            }, completion: nil)
            
            UIView.animateWithDuration(time, delay: delay * 2, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.videoIcon.frame.origin.y = self.videoIconOriginalPosition.y
            }, completion: nil)
            
            UIView.animateWithDuration(time, delay: delay * 3, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.quoteIcon.frame.origin.y = self.quoteIconOriginalPosition.y
            }, completion: nil)
            
            UIView.animateWithDuration(time, delay: delay * 4, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.chatIcon.frame.origin.y = self.chatIconOriginalPosition.y
            }, completion: nil)
            
            UIView.animateWithDuration(time, delay: delay * 5, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
                self.linkIcon.frame.origin.y = self.linkIconOriginalPosition.y
            }, completion: nil)
            
        })
        
        
        
        
    }
    
    @IBAction func didPressNevermind(sender: UIButton) {
        let time = 0.4
        let damping: CGFloat! = 0.7
        let delay = 0.05
        let offScreenY: CGFloat! = 600
        
        UIView.animateWithDuration(time, delay: delay * 5, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.textIcon.frame.origin.y = offScreenY
            }, completion: { finished in
                UIView.animateWithDuration(time, animations: { () -> Void in
                    self.composeView.alpha = 0
                    }, completion: { (Bool) -> Void in
                        self.dismissViewControllerAnimated(false, completion: {})
                })
        })
        
        UIView.animateWithDuration(time, delay: delay * 4, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.photoIcon.frame.origin.y = offScreenY
            }, completion: nil)
        
        UIView.animateWithDuration(time, delay: delay * 3, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.videoIcon.frame.origin.y = offScreenY
            }, completion: nil)
        
        UIView.animateWithDuration(time, delay: delay * 2, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.quoteIcon.frame.origin.y = offScreenY
            }, completion: nil)
        
        UIView.animateWithDuration(time, delay: delay * 1, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.chatIcon.frame.origin.y = offScreenY
            }, completion: nil)
        
        UIView.animateWithDuration(time, delay: delay * 0, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: UIViewAnimationOptions.AllowUserInteraction, animations: { () -> Void in
            self.linkIcon.frame.origin.y = offScreenY
            }, completion: nil)
        
        
        
    }
}
