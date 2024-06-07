

import UIKit

class ViewController: UIViewController {
    
    let datePicker = UIDatePicker()
    let selectedDateLabel = UILabel()
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        setupUI()
    }
    func setupUI(){
        
        //setup datepicker
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.addTarget(self, action: #selector(dateChnged(_:)), for: .valueChanged)
        view.addSubview(datePicker)

        // setup label
        selectedDateLabel.text = "Select Date"
        selectedDateLabel.textAlignment = .center
        selectedDateLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(selectedDateLabel)
        
        NSLayoutConstraint.activate([
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            selectedDateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            selectedDateLabel.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 20),
            selectedDateLabel.widthAnchor.constraint(equalToConstant: 300),
            selectedDateLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    @objc func dateChnged(_ sender: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        let selectedDate = dateFormatter.string(from: sender.date)
        selectedDateLabel.text = "Selected Date is : \(selectedDate)"
    }
}



// Toggle Switch Code


import UIKit

class ViewController: UIViewController {
    
    let toggleSwitch = UISwitch()
    let stateLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    func setupUI(){
        toggleSwitch.isOn = false
        toggleSwitch.translatesAutoresizingMaskIntoConstraints = false
        toggleSwitch.addTarget(self, action: #selector(switchToggled(_:)), for: .valueChanged)
        view.addSubview(toggleSwitch)
        
        stateLabel.text = "Switch is OFF"
        stateLabel.textAlignment = .center
        stateLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stateLabel)
        
        NSLayoutConstraint.activate([
                    // Switch Constraints
                    toggleSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    toggleSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    
                    // Label Constraints
                    stateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    stateLabel.topAnchor.constraint(equalTo: toggleSwitch.bottomAnchor, constant: 20),
                    stateLabel.widthAnchor.constraint(equalToConstant: 200),
                    stateLabel.heightAnchor.constraint(equalToConstant: 40)
                ])
    }
    
    @objc func switchToggled(_ sender:UISwitch){
        if sender.isOn{
            stateLabel.text = "Switch is ON"
        }else{
            stateLabel.text = "Switch is OFF"
        }
    }
}



//Alert

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI(){
        let button = UIButton(type: .system)
        button.setTitle("Show Alert", for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc func showAlert() {
        let alertController = UIAlertController(title: "Alert", message: "This is a simple Alert", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction((okAction))
        present(alertController, animated: true, completion: nil)
    }
}


