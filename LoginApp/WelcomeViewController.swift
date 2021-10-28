//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дмитрий Бизюков on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomLabel: UILabel!
    
    var usernameWelcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.layer.cornerRadius = 20
        welcomLabel.text = "Welcome, \(usernameWelcome ?? "DefaultUser")!"
    }

//    @IBAction func logoutButtonPressed() {
//        dismiss(animated: true)
//    }

}
