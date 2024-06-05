//
//  ViewController.swift
//  DemoDataTransfer
//
//  Created by Hitesh Sharma - Vendor on 06/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func movetoSecondVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondvc") as? SecondViewController
        vc?.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}

extension ViewController: moveDataToBack {
    func passData(data: String) {
        dataLabel.text = data
    }
    
    
}

