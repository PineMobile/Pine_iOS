//
//  FriendViewController.swift
//  Pine
//
//  Created by Nir Boneh on 2/1/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class FriendViewController:UIViewController {
    
    var name: String?{
        didSet{
            updateViewsBasedOnName()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setting back button to custom back button
        self.navigationItem.leftBarButtonItem = BackButton(navigationController: self.navigationController!);
    }
    
    func updateViewsBasedOnName(){
        self.navigationItem.title = name

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
