//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Alex Miles on 2/25/16.
//  Copyright © 2016 Dropbox. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeVC")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchVC")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountVC")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingVC")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
    }

    
    @IBAction func didPressTab(sender: UIButton) {
        
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
