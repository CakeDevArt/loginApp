//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Daniel on 14.01.2023.
//

import UIKit

class WelcomeViewController: LoginViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
