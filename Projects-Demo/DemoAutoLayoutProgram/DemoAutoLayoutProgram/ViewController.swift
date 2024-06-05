//
//  ViewController.swift
//  DemoAutoLayoutProgram
//
//  Created by Hitesh Sharma - Vendor on 05/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        view.addSubview(blueView)
        // Do any additional setup after loading the view.
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            redView.widthAnchor.constraint(equalToConstant: 100),
            redView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }


}

