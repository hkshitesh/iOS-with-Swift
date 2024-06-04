//
//  ViewController.swift
//  DemoPickerView
//
//  Created by Hitesh Sharma - Vendor on 05/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryTxt: UITextField!
    var data = ["USA","China","India","Australia","Japan"]
    let pickerView = UIPickerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        countryTxt.inputView = pickerView
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryTxt.text = data[row]
    }
}
