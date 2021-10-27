//
//  ViewController.swift
//  LoginApp
//
//  Created by Дмитрий Бизюков on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    
    let username = "Student"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.autocorrectionType = .no
        passTextField.autocorrectionType = .no
        passTextField.isSecureTextEntry = true
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func forgotPass() {
        showAlert(title: "Reminder", message: "Your password is \(password)")
    }
    
    @IBAction func forgotUser() {
        showAlert(title: "Reminder", message: "Your login is \(username)")
    }
    
    @IBAction func loginButton() {
        if passTextField.text != password || userTextField.text != username {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passTextField.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.usernameWelcome = username
    }

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        userTextField.text = ""
        passTextField.text = ""
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
        
    }
}

