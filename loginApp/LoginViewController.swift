//
//  ViewController.swift
//  loginApp
//
//  Created by Daniel on 14.01.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = "Welcome, \(userName)!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButton() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            passwordTF.text = ""
            showAlert(title: "Warning!", message: "Wrong login or password")
            return
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserTapped() {
        showAlert(title: "Ooops!", message: "Your User Name: \(userName)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Ooops!", message: "Your Password: \(password)")
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

