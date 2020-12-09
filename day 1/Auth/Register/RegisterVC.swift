//
//  RegisterVC.swift
//  day 1
//
//  Created by Abdullah on 18/04/1442 AH.
//

import UIKit


class RegisterVC: UIViewController {
    
    @IBOutlet weak var EmailTextFieldOutLet: CustomTextField!
    @IBOutlet weak var PasswordTextFieldOutLet: CustomTextField!
    @IBOutlet weak var ConfirmPasswordTextFieldOutLet: CustomTextField!
    @IBOutlet weak var RegisterButtonOutLet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFieldDelegate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        RegisterButtonOutLet.addCustomDesign(backgroundColor: UIColor(hex: "#69f0ae"), borderColor: UIColor(hex: "#2b2727"))
    }
    
    @IBAction func MoveToLoginVC(_ sender: Any) {
        self.performSegue(withIdentifier: "MoveToLoginVC", sender: nil)
    }
    
    @IBAction func MoveBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

// MARK: - Delegate Text Field
extension RegisterVC: UITextFieldDelegate {
    
    func setupTextFieldDelegate() {
        EmailTextFieldOutLet.delegate = self
        PasswordTextFieldOutLet.delegate = self
        ConfirmPasswordTextFieldOutLet.delegate = self
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

