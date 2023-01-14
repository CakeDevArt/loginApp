//
//  ViewController.swift
//  loginApp
//
//  Created by Daniel on 14.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let userName = "User"
    let password = "Password"
    
    @IBAction func forgotUserTapped() {
        showAlert(title: "Ooops!", message: "Your User Name: \(userName)")
    }
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Ooops!", message: "Your Password: \(password)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
}

