//
//  userViewController.swift
//  loginApp
//
//  Created by Daniel on 21.01.2023.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        avatarImage.image = UIImage(named: user.person.avatar)
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        companyLabel.text = user.person.job.nameCompany
        positionLabel.text = user.person.job.position

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutOfUserVC = segue.destination as? AboutOfUserViewController else { return }
        aboutOfUserVC.user = user
    }
}
