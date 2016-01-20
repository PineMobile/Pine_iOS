//
//  BackButton.swift
//  Pine
//
//  Created by Nir Boneh on 1/18/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import Foundation

import UIKit

class BackButton: UIBarButtonItem {
    
    var navigationController: UINavigationController;
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController;
        super.init();
    
        let btn = UIButton();
        btn.setImage(UIImage(named: "BackArrow"), forState:UIControlState.Normal);
        btn.frame = CGRectMake(0, 0, 30, 30);
        btn.addTarget(self, action: "clicked:", forControlEvents: UIControlEvents.TouchUpInside)

        self.customView = btn;

        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func clicked(sender:UIButton!)
    {
        navigationController.popViewControllerAnimated(true)
    }

}
