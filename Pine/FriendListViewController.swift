//
//  FriendListViewController.swift
//  Pine
//
//  Created by Nir Boneh on 2/1/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class FriendListViewController:UITableViewController {
    
    var friendList: [String] = ["Mary", "Johnny", "Fred"]
    var chatList: [Bool] = [false, false, true]
    
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
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "       Me"
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 40;
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        //Setting me Icon
        let iconImg = UIImageView(frame: CGRectMake(5, 5, 30, 30))
        iconImg.image = UIImage(named: ("MeIcon"))
        
        let header = UITableViewHeaderFooterView()
        header.addSubview(iconImg)
        return header
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FriendCell", forIndexPath: indexPath)
        
        //Setting name of friend
        let name = friendList[indexPath.row]
        cell.textLabel?.text = "      " + name
        
        //Setting image of friend
        let iconImg = UIImageView(frame: CGRectMake(5, 5, 30, 30))
        iconImg.image = UIImage(named: (name + "Icon"))
        cell.addSubview(iconImg)
        
        //Setting chat icon if needed
        if(chatList[indexPath.row]){
            let chatImg = UIImageView(frame: CGRectMake(cell.frame.width * 0.75, 10, 30, 25))
            chatImg.image = UIImage(named: "ChatIcon")
            cell.addSubview(chatImg)
            
        }
        
        return cell
    }
    
    
    
}