//
//  ViewController.swift
//  DemoSumTwoNumbers
//
//  Created by Hitesh Sharma - Vendor on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtSecondNum: UITextField!
    @IBOutlet weak var txtFirstNum: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actSum(_ sender: Any) {
        let num1 = Int(txtFirstNum.text!)
        let num2 = Int(txtSecondNum.text!)
        
        let res = num1! + num2!
        
        lblResult.text = String(res)
        print("Num1 is ",num1!)
        print("num 2 is ",num2!)
        print("Sum is ",res)
    }
}

