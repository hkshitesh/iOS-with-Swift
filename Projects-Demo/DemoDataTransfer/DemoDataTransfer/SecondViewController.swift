//
//  SecondViewController.swift
//  DemoDataTransfer
//
//  Created by Hitesh Sharma - Vendor on 06/06/24.
//

import UIKit

protocol moveDataToBack {
    func passData(data:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    var delegate: moveDataToBack!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func moveToFirstVC(_ sender: Any) {
        
        delegate.passData(data: myTextField.text!)
        navigationController?.popViewController(animated: true)
        
    }
    

}
