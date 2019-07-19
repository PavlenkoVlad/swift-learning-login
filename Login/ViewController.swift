//
//  ViewController.swift
//  Login
//
//  Created by Владислав Павленко on 6/29/19.
//  Copyright © 2019 Владислав Павленко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUserNameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUserNameOrPassword", sender: forgotPasswordButton)
    }
    
}

