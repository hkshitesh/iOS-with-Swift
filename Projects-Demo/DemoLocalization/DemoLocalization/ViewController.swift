import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set localized strings
        label.text = NSLocalizedString("hello", comment: "Hello, World!")
        button.setTitle(NSLocalizedString("button_title", comment: "Press Me"), for: .normal)
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Change label text when button is pressed
        label.text = NSLocalizedString("button_title", comment: "Button Pressed")
    }
}
