//
//  SignUpViewController.swift
//  Cazaar
//
//  Created by myl142857 on 1/9/20.
//  Copyright © 2020 myl142857. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    var emailLabel: UILabel!
    var passwordLabel: UILabel!
    var emailTextField: UITextField!
    var passwordTextField: UITextField!
    var signUpButton: UIButton!
    var backButton: UIButton!
    
    let textFieldLength: CGFloat = 200
    let buttonSize: CGFloat = 60
    let topPadding: CGFloat = 40
    let sidePadding: CGFloat = 20
    let borderWidth: CGFloat = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        emailLabel = UILabel()
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "Email: "
        view.addSubview(emailLabel)
        
        passwordLabel = UILabel()
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "Password: "
        view.addSubview(passwordLabel)
        
        emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.layer.borderWidth = borderWidth
        emailTextField.layer.cornerRadius = 10
        view.addSubview(emailTextField)
        
        passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.layer.borderWidth = borderWidth
        passwordTextField.layer.cornerRadius = 10
        view.addSubview(passwordTextField)
        
        signUpButton = UIButton()
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.layer.borderWidth = borderWidth
        signUpButton.layer.cornerRadius = 10
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        view.addSubview(signUpButton)
        
        backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.black, for: .normal)
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        view.addSubview(backButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.widthAnchor.constraint(equalToConstant: textFieldLength),
            emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.trailingAnchor.constraint(equalTo: emailTextField.leadingAnchor, constant: sidePadding),
            emailLabel.widthAnchor.constraint(equalToConstant: buttonSize),
            emailLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor),
            emailLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalToConstant: textFieldLength),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: topPadding),
            passwordTextField.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            passwordLabel.trailingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: sidePadding),
            passwordLabel.widthAnchor.constraint(equalToConstant: buttonSize),
            passwordLabel.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
            passwordLabel.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: buttonSize),
            signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: topPadding),
            signUpButton.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
        
        NSLayoutConstraint.activate([
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.widthAnchor.constraint(equalToConstant: buttonSize),
            backButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: topPadding),
            backButton.heightAnchor.constraint(equalToConstant: buttonSize)
        ])
    }
    
    @objc func signUp() {
        print("sign up")
    }
    
    @objc func back() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
