//
//  UIViewExtension.swift
//  BragancaTechDay2017
//
//  Created by Mauro André Barros Mazzola on 04/04/17.
//  Copyright © 2017 Mauro André Barros Mazzola. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var masksToBounds : Bool {
        set (newValue) {
            self.layer.masksToBounds = newValue
        }
        get {
            return self.layer.masksToBounds
        }
    }
    
    @IBInspectable var borderColor : UIColor? {
        set (newValue) {
            self.layer.borderColor = (newValue ?? UIColor.clear).cgColor
        }
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat {
        set (newValue) {
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat {
        set (newValue) {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }
}
