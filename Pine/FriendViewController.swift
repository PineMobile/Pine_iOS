//
//  FriendViewController.swift
//  Pine
//
//  Created by Nir Boneh on 2/1/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class FriendViewController:UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var name: String?{
        didSet{
            updateViewsBasedOnName()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setting back button to custom back button for phones
         if (UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone){
             self.navigationItem.leftBarButtonItem = BackButton(navigationController: self.navigationController!);
        }
        
        //Will align text in current activity text view correctly
        self.automaticallyAdjustsScrollViewInsets = false
        updateViewsBasedOnName();

    }
    
    func updateViewsBasedOnName(){
        if(name != nil){
            self.navigationItem.title = name
            self.view.hidden = false;
            imageView?.image = UIImage(named: name!)
        } else {
            self.view.hidden = true;
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func optionClicked(sender: UIButton){
        
        //Presenting option menu
        let optionMenu = UIAlertController(title: "Choose Option", message: nil, preferredStyle: .ActionSheet)
        
        let messageAction = UIAlertAction(title: "Message", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        let pingAction = UIAlertAction(title: "Ping Action", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            
        })
        
        
        let sharedInterestsAction = UIAlertAction(title: "Shared Interests", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        let infoAction = UIAlertAction(title: "Contact's Info", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        let deleteAction = UIAlertAction(title: "Delete Contact", style: .Destructive, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        
        optionMenu.addAction(messageAction)
        optionMenu.addAction(pingAction)
        optionMenu.addAction(sharedInterestsAction)
        optionMenu.addAction(infoAction)
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(cancelAction)
        
        optionMenu.popoverPresentationController?.sourceView = sender
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }

}
