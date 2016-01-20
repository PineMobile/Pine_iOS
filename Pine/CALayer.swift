//
//  CALayer.swift
//  Pine
//
//  Created by Nir Boneh on 1/18/16.
//  Copyright © 2016 Pine. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    //This extensions allows to add border colors to views through the storyboard using UIColor
    var borderUIColor: UIColor {
        set {
            self.borderColor = newValue.CGColor
        }
        
        get {
            return UIColor(CGColor: self.borderColor!)
        }
    }
    
}