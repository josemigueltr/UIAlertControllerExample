//
//  CustomButtonAttributes.swift
//  UIAlertsExample
//
//  Created by miguel toledo on 26/08/22.
//

import Foundation
import UIKit

@IBDesignable
class UICustomButton: UIButton {
   
    //Add corner radius attibute
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
           self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
           self.layer.borderColor = borderColor.cgColor
        }
    }
    // button border width
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
           self.layer.borderWidth = borderWidth
        }
    }
    
    // button shadow color
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
       didSet{
          self.layer.shadowColor = shadowColor.cgColor
          self.layer.masksToBounds = false
       }
    }
    // button shadow opacity
    @IBInspectable var shadowOpacity: Float = 0.4 {
       didSet {
          self.layer.masksToBounds = false
          self.layer.shadowOpacity = shadowOpacity
       }
    }
        
    // button shadow offset
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 1, height: 4) {
        didSet {
           self.layer.masksToBounds = false
           self.layer.shadowOffset = shadowOffset
        }
    }
    
    // button shadow radius
    @IBInspectable var shadowRadius: CGFloat = CGFloat(0.5) {
       didSet {
          self.layer.masksToBounds = false
          self.layer.shadowRadius = shadowRadius
       }
    }
}
