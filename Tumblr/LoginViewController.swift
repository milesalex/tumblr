//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Alex Miles on 2/26/16.
//  Copyright © 2016 Dropbox. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet var loginView: UIView!
    @IBOutlet weak var loginForm: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        loginView.alpha = 0
        loginForm.alpha = 0
        textField.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.loginForm.alpha = 1
            self.loginView.alpha = 1
            }) { (Bool) -> Void in
                self.textField.hidden = false
                self.textField.becomeFirstResponder()
        }
    }
    
    @IBAction func didPressCancel(sender: UIButton) {
        self.textField.hidden = true
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.loginForm.alpha = 0
            self.loginView.alpha = 0
            }) { (Bool) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
