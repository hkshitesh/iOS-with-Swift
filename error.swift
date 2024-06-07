//
//  ViewController.swift
//  DemoErrorHandlingProg
//
//  Created by Hitesh Sharma - Vendor on 08/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    enum DivisionError: Error {
        case divisionByZero
        case invalidInput
    }
    
    //Ui Elements
    var dividendtTextField: UITextField!
    var divisorTextField: UITextField!
    var resultLabel: UILabel!
    var divideButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        setupUI()
        
    }
    
    func setupUI(){
        
        dividendtTextField = UITextField()
        dividendtTextField.placeholder = "Enter dividend"
        dividendtTextField.borderStyle = .roundedRect
        dividendtTextField.keyboardType = .decimalPad
        dividendtTextField.translatesAutoresizingMaskIntoConstraints = false
        
        divisorTextField = UITextField()
        divisorTextField.placeholder = "Enter divisor"
        divisorTextField.borderStyle = .roundedRect
        divisorTextField.keyboardType = .decimalPad
        divisorTextField.translatesAutoresizingMaskIntoConstraints = false
        
        resultLabel = UILabel()
        resultLabel.text = "Result"
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        divideButton = UIButton(type: .system)
        divideButton.setTitle("Divide", for: .normal)
        divideButton.addTarget(self, action: #selector(divideButtonTapped), for: .touchUpInside)
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(dividendtTextField)
        view.addSubview(divisorTextField)
        view.addSubview(resultLabel)
        view.addSubview(divideButton)
        
        NSLayoutConstraint.activate([
                    // Position the dividend text field
                    dividendtTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
                    dividendtTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    dividendtTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

                    // Position the divisor text field
                    divisorTextField.topAnchor.constraint(equalTo: dividendtTextField.bottomAnchor, constant: 20),
                    divisorTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    divisorTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                    
                    // Position the divide button
                    divideButton.topAnchor.constraint(equalTo: divisorTextField.bottomAnchor, constant: 20),
                    divideButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

                    // Position the result label
                    resultLabel.topAnchor.constraint(equalTo: divideButton.bottomAnchor, constant: 20),
                    resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
                ])
    }

    @objc func divideButtonTapped(){
        do {
            let result = try performDivision()
            resultLabel.text = "Result: \(result)"
        }catch DivisionError.divisionByZero{
            resultLabel.text = "Error: Division by zero is not allowed"
        }catch DivisionError.invalidInput{
            resultLabel.text = "Error: Invalid Input, Please enter number"
        }catch {
            resultLabel.text = "Error: \(error.localizedDescription)"
        }
    }
    
    func performDivision() throws ->Double{
        guard let dividendtText =  dividendtTextField.text,
              let dividend = Double(dividendtText),
              let divisorText = divisorTextField.text,
              let divisor = Double(divisorText) else {
            throw DivisionError.invalidInput
        }
        
        if divisor == 0{
            throw DivisionError.divisionByZero
        }
            return dividend / divisor
    }
}

