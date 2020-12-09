//
//  UIButton + Extension.swift
//  day 1
//
//  Created by Abdullah on 16/04/1442 AH.
//

import UIKit

extension UIButton {
    func addCustomDesign(backgroundColor: UIColor, borderColor: UIColor) {
        
        // Button Properties
        self.layer.cornerRadius = self.layer.frame.height / 2
        self.layer.borderColor = borderColor.cgColor
        self.setTitleColor(borderColor, for: .normal)
        self.layer.borderWidth = 1.5
        self.backgroundColor = UIColor.clear
        
        // Make Layer
        let customLayer = CALayer()
        let frame = self.layer.frame
        customLayer.frame = CGRect(x: 0, y: 0, width: frame.size.width , height: frame.size.height)
        customLayer.backgroundColor = backgroundColor.cgColor
        customLayer.cornerRadius = self.layer.cornerRadius
        customLayer.frame = customLayer.frame.inset(by: UIEdgeInsets(top: 6.5, left: 5, bottom: 0, right: 0))
        
        // Add the new layer to button
        self.layer.insertSublayer(customLayer, at: 0)
    }
    
    func addCustomBorder(borderColor: UIColor){
        // Button Properties
        self.layer.cornerRadius = self.layer.frame.height / 2
        self.layer.borderColor = borderColor.cgColor
        self.setTitleColor(borderColor, for: .normal)
        self.layer.borderWidth = 1.5
        self.backgroundColor = UIColor.clear
    }
    
    
    
    // MARK: - Adjust Font Size To Width
    @IBInspectable var adjustFontSizeToWidth: Bool {
        get {
            return self.titleLabel?.adjustsFontSizeToFitWidth ?? false
        }
        set {
            self.titleLabel?.numberOfLines = 1
            self.titleLabel?.adjustsFontSizeToFitWidth = newValue;
            self.titleLabel?.lineBreakMode = .byClipping;
            self.titleLabel?.baselineAdjustment = .alignCenters
            self.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
    }
    
}
