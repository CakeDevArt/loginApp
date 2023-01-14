//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Daniel on 14.01.2023.
//

import UIKit

class WelcomeViewController: LoginViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
}
