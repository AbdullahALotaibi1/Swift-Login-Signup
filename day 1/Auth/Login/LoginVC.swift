//
//  LoginVC.swift
//  day 1
//
//  Created by Abdullah on 17/04/1442 AH.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var EmailTextFieldOutLet: CustomTextField!
    @IBOutlet weak var PasswordTextFieldOutLet: CustomTextField!
    @IBOutlet weak var LoginButtonOutLet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFieldDelegate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LoginButtonOutLet.addCustomDesign(backgroundColor: UIColor(hex: "#69f0ae"), borderColor: UIColor(hex: "#2b2727"))
    }
    
    @IBAction func MoveBackButton(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func MoveToRegisterVC(_ sender: Any) {
        self.performSegue(withIdentifier: "MoveToRegisterVC", sender: nil)
            
         
        
    }
    
}

// MARK: - Delegate Text Field
extension LoginVC: UITextFieldDelegate {
    
    func setupTextFieldDelegate() {
        EmailTextFieldOutLet.delegate = self
        PasswordTextFieldOutLet.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.25) {
            textField.layer.borderColor = UIColor(hex: "#98c3ea").cgColor
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.2) {
            textField.layer.borderColor = UIColor(hex: "#bdbdbd").cgColor
        }
    }
    
}

