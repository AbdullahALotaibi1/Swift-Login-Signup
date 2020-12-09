//
//  UITextField + Extension.swift
//  day 1
//
//  Created by Abdullah on 17/04/1442 AH.
//

import UIKit


extension UITextField{
    
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

class CustomTextField: UITextField {
    
    var isPassword: Bool = false
    var isSecureText: Bool = true
    // Inspector variable determining if the text must be hidden or not
    @IBInspectable var isAPasswordField: Bool {
        get{ return self.isSecureText }
        set{
            updateSecureTextEntry()
        }
    }
    
    func updateSecureTextEntry()  {
        self.isSecureTextEntry = isAPasswordField
        let iconSizeWidth = layer.frame.height * 0.35
        let iconSizeHeight = layer.frame.height * 0.25
        let iconView = UIImageView(frame: CGRect(x: 15, y: 0, width:  iconSizeWidth, height: iconSizeHeight)) // set your Own size
        iconView.image = UIImage(named: isSecureText ? "hide_password" : "show_password")
        
        iconView.tintColor = UIColor(hex: "#616161")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: iconSizeWidth, height: iconSizeHeight))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftView?.frame = leftView!.frame.inset(by: UIEdgeInsets(top: 0, left: (self.frame.width * 0.11) + iconSizeWidth, bottom: 0, right: 0))
        leftViewMode = .always
//        self.tintColor =
        // add action in click image
        let tap = UITapGestureRecognizer(target: self, action: #selector(CustomTextField.ChangeStatusSecureText))
        iconView.addGestureRecognizer(tap)
        iconView.isUserInteractionEnabled = true
    }
    
    @objc func ChangeStatusSecureText()
    {
        self.isSecureText = !self.isSecureText
        self.isAPasswordField = isPassword
    }
    
    override func awakeFromNib() {
        layer.cornerRadius = 6
        layer.borderWidth = 1.5
        layer.borderColor = UIColor(hex: "#bdbdbd").cgColor
        layer.masksToBounds = true
        self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: layer.frame.height))
        self.rightViewMode = .always
    }
}
