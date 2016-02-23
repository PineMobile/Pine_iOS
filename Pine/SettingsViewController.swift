//
//  SettingsViewController.swift
//  Pine
//
//  Created by Nir Boneh on 2/22/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import UIKit

class SettingsViewController:UITableViewController, UITextFieldDelegate {
    
    var numOfCells:Int = 9
    var reportIndex:Int = 7
    var deleteIndex:Int = 8
    var searchIndex:Int = 0
    var limitMilesLength:Int = 3

    
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
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numOfCells
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SettingsCell", forIndexPath: indexPath)
        switch indexPath.row {
        case searchIndex:
            cell.textLabel?.text = "Search for people within            miles"
            
            let milesView = UITextField();
            
            milesView.layer.borderWidth = 1
            milesView.layer.cornerRadius = 5
            milesView.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
            milesView.layer.borderColor = UIColor(red:218/255.0, green:229/255.0, blue:241/255.0, alpha: 1.0).CGColor
            
            milesView.keyboardType = UIKeyboardType.NumberPad
            
            milesView.frame = CGRectMake(cell.frame.width - 110, 10, 90, 25)
            
            milesView.delegate = self
            
            
            cell.addSubview(milesView)

        case reportIndex:
           cell.textLabel?.text = "Report problem"
        case deleteIndex:
            cell.textLabel?.text = "Delete account"
        
        default: break
            

        }

        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //Dismiss keyboard
        self.view.endEditing(true)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= limitMilesLength
    }



}