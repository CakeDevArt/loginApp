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
    
    private let user = User.getUser()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButton() {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            showAlert(title: "Warning!",
                      message: "Wrong login or password",
                      textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    @IBAction func forgotUserTapped() {
        showAlert(title: "Ooops!", message: "Your User Name: \(user.userName)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(title: "Ooops!", message: "Your Password: \(user.password)")
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in textField?.text = ""}
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

