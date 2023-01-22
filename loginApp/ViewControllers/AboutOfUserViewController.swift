//
//  MoreInfoViewController.swift
//  loginApp
//
//  Created by Daniel on 21.01.2023.
//

import UIKit

class AboutOfUserViewController: UIViewController {
    
    @IBOutlet weak var aboutOfUserLabel: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        aboutOfUserLabel.text = user.person.aboutOfUser
    }
}
