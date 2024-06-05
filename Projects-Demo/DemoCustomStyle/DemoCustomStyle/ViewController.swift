//
//  ViewController.swift
//  DemoCustomStyle
//
//  Created by Hitesh Sharma - Vendor on 05/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.lightGray
        
        //create lable
        
        let label = UILabel(frame: CGRect(x: 20, y: 50, width: 300, height: 50))
        label.text = "Hello iOS"
        
        Style.applyPrimaryLabelStyle(to: label)
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 120, width: 200, height: 50)
        button.setTitle("Tap Me", for: .normal)
        Style.applyPrimaryButtonStyle(to: button)
        
        
        self.view.addSubview(label)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    @objc func buttonTapped(){
        print("Button was Tapped")
    }
}

