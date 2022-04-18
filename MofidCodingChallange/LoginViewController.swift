//
//  LoginViewController.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit

class LoginViewController: UIViewController {

    let userManager = UserManager.shared
    var coordinator : MainCoordinator?
    lazy var textField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "09160730470"
        textField.textContentType = .telephoneNumber
        textField.backgroundColor  = .gray
        textField.keyboardType = .numberPad
        textField.delegate = self
       
        return textField
    }()
    lazy var loginButton : UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(self.loginAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         configure()
        // Do any additional setup after loading the view.
    }
    

    func configure() {
        configureViews()
    }
    func configureViews() {
        view.addSubview(loginButton)
        view.addSubview(textField)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.borderColor = UIColor.red.cgColor
        loginButton.layer.borderWidth = 2
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
       
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    @objc func loginAction() {
        print("Button  Reached")
        if let text = textField.text {
        if textField.text?.count == 11 {
            userManager.loginUser(with: text) { [weak self] isSuc in
            //Move to Home
                print("moving to home")
                self?.coordinator?.presentHomeScreen()
        }
        } else {
            print("phone number must be 11 characters")
        }
        } else {
            print("textfield is empty")
        }
    }
}

extension LoginViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        let maxLengthState = updatedText.count <= 11
        let allowedCharacters = CharacterSet(charactersIn:"0123456789 ")//Here change this characters based on your requirement
        let characterSet = CharacterSet(charactersIn: string)
        let numericOnlyState = allowedCharacters.isSuperset(of: characterSet)
        if numericOnlyState && maxLengthState {
            return true
        } else {
            return false
        }
    }

    
}
