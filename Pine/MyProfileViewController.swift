//
//  MyProfileViewController.swift
//  Pine
//
//  Created by Nir Boneh on 1/18/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
   
    
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setting back button to custom back button
        self.navigationItem.leftBarButtonItem = BackButton(navigationController: self.navigationController!);
   
    //Will align text in current activity text view correctly
    self.automaticallyAdjustsScrollViewInsets = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func optionClicked(sender: UIButton){
        
        //Presenting option menu
         let optionMenu = UIAlertController(title: "Choose Option", message: nil, preferredStyle: .ActionSheet)
        
        let taglinesAction = UIAlertAction(title: "Change Taglines", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        let picturesAction = UIAlertAction(title: "Change Pictures", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in

        })
        
        
        let infoAction = UIAlertAction(title: "Change Info", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        
        optionMenu.addAction(taglinesAction)
        optionMenu.addAction(picturesAction)
        optionMenu.addAction(infoAction)
        optionMenu.addAction(cancelAction)
        
        optionMenu.popoverPresentationController?.sourceView = sender

        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    

 
}

