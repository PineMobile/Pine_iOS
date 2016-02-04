//
//  FriendiPadViewController.swift
//  Pine
//
//  Created by Nir Boneh on 2/3/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class FriendiPadViewController:UIViewController {
    
    @IBOutlet weak var splitViewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = BackButton(navigationController: self.navigationController!)
        
        
    }
    
    override func prepareForSegue(segue:(UIStoryboardSegue!), sender:AnyObject!)
    {
        if (segue.identifier == "SplitSegue")
        {
            let splitViewController = segue!.destinationViewController as! UISplitViewController
            splitViewController.viewControllers
                = [(self.storyboard?.instantiateViewControllerWithIdentifier("FriendsListViewController"))!, (self.storyboard?.instantiateViewControllerWithIdentifier("FriendViewController"))!]
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
