//
//  HomeViewController.swift
//  Tumblr
//
//  Created by Alex Miles on 2/25/16.
//  Copyright © 2016 Dropbox. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didPressLoginButton(sender: UIButton) {
        self.performSegueWithIdentifier("loginSegue", sender: self)
    }
}
