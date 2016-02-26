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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        let textIconOriginalPosition = textIcon.frame.origin
        let photoIconOriginalPosition = photoIcon.frame.origin
        let videoIconOriginalPosition = videoIcon.frame.origin
        let quoteIconOriginalPosition = quoteIcon.frame.origin
        let chatIconOriginalPosition = chatIcon.frame.origin
        let linkIconOriginalPosition = linkIcon.frame.origin
        
        textIcon.frame.origin.y = 600
        photoIcon.frame.origin.y = 600
        videoIcon.frame.origin.y = 600
        quoteIcon.frame.origin.y = 600
        chatIcon.frame.origin.y = 600
        linkIcon.frame.origin.y = 600
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    @IBAction func didPressNevermind(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: {})
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
