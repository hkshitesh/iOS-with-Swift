
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

