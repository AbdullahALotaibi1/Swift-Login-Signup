//
//  WelcomeVC.swift
//  day 1
//
//  Created by Abdullah on 16/04/1442 AH.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var LoginButtonOutLet: UIButton!
    @IBOutlet weak var RegisterButtonOutLet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LoginButtonOutLet.addCustomBorder(borderColor: UIColor(hex: "#2b2727"))
        RegisterButtonOutLet.addCustomDesign(backgroundColor: UIColor(hex: "#fee56f"), borderColor: UIColor(hex: "#2b2727"))
        
    }
    
    @IBAction func MoveToLoginVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MoveToLoginVC", sender: nil)
    }
    
    @IBAction func MoveToRegisterVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MoveToRegisterVC", sender: nil)
    }
}
