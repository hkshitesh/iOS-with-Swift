

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

