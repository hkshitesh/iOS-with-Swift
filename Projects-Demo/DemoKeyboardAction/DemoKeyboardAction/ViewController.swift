//
//  ViewController.swift
//  DemoKeyboardAction
//
//  Created by Hitesh Sharma - Vendor on 05/06/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    let textField: UITextField = {
        let textFiled = UITextField()
        textFiled.borderStyle = .roundedRect
        textFiled.placeholder = "Enter Text"
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let showKeyboardButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Keyboard", for: .normal)
        button.addTarget(self, action: #selector(showKeyboard), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let hideKeyboardButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Hide Keyboard", for: .normal)
        button.addTarget(self, action: #selector(hideKeyboard), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(textField)
        view.addSubview(showKeyboardButton)
        view.addSubview(hideKeyboardButton)
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textField.heightAnchor.constraint(equalToConstant: 40),
            
            showKeyboardButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            showKeyboardButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            hideKeyboardButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            hideKeyboardButton.leadingAnchor.constraint(equalTo: showKeyboardButton.trailingAnchor, constant: 20)
        ])
        
        textField.delegate = self
        
    }
    
    @objc  func showKeyboard()
    {
        textField.becomeFirstResponder()
    }
    
    @objc func hideKeyboard()
    {
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

