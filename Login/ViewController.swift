//
//  ViewController.swift
//  Login
//
//  Created by Heri Susanto on 27/02/21.
//  Copyright © 2021 Heri Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        } else {
            segue.destination.title = usernameTextField.text
        }
        
        
    }

    @IBAction func forgotUsernamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
}

