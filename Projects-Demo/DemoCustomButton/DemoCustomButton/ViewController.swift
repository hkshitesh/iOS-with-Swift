//
//  ViewController.swift
//  DemoCustomButton
//
//  Created by Hitesh Sharma - Vendor on 05/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let customButton = CustomButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        self.view.addSubview(customButton)
        
        customButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc func buttonTapped(){
        print("Button was Tapped")
        
    }
}

