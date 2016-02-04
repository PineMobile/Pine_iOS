//
//  ViewController.swift
//  Pine
//
//  Created by Nir Boneh on 1/17/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
    
        //Hide navigation bar when view appears
        self.navigationController?.navigationBar.hidden = true;
    }
   
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated);
        
        //Unhiding navigation bar when view disappears
        self.navigationController?.navigationBar.hidden = false;
        
    }
    
    @IBAction func friendsButtonClicked(){
        if (UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad){
            //ipad pushing splitViewController
           performSegueWithIdentifier("FriendsListSeguePad" , sender: self)
        } else {
            //iphone pushing normal friendListViewController
            performSegueWithIdentifier("FriendsListSeguePhone" , sender: self)
        }

    }
    
    
}

