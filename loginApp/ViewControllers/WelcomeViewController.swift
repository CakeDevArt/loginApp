//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Daniel on 14.01.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}

