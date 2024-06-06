
import UIKit

class ViewController: UIViewController {
    
    public var lengthTextField: UITextField!
    public var widthTextField: UITextField!
    public var calCulateButton: UIButton!
    public var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        cofigureUI()
        // Do any additional setup after loading the view.
    }
    
    public func cofigureUI(){
        
        //Length Text Filed
        
        lengthTextField = UITextField()
        lengthTextField.placeholder = "Enter length"
        lengthTextField.borderStyle = .roundedRect
        lengthTextField.translatesAutoresizingMaskIntoConstraints = false
        lengthTextField.accessibilityIdentifier = "LengthTextField"
        view.addSubview(lengthTextField)
        
        // Width Text Filed
        
        widthTextField = UITextField()
        widthTextField.placeholder = "Enter width"
        widthTextField.borderStyle = .roundedRect
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.accessibilityIdentifier = "WidthTextField"
        view.addSubview(widthTextField)
        
        //Calculate Button
        
        calCulateButton = UIButton(type: .system)
        calCulateButton.setTitle("Calculate", for: .normal)
        calCulateButton.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        calCulateButton.translatesAutoresizingMaskIntoConstraints = false
        calCulateButton.accessibilityIdentifier = "CalculateButton"
        view.addSubview(calCulateButton)
        
        // Result Label
        
        resultLabel = UILabel()
        resultLabel.textAlignment = .center
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.accessibilityIdentifier = "ResultLabel"
        view.addSubview(resultLabel)
        
        //Setup Constraints
        NSLayoutConstraint.activate([
                    lengthTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    lengthTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                    lengthTextField.widthAnchor.constraint(equalToConstant: 200),
                    widthTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    widthTextField.topAnchor.constraint(equalTo: lengthTextField.bottomAnchor, constant: 20),
                    widthTextField.widthAnchor.constraint(equalToConstant: 200),
                    calCulateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    calCulateButton.topAnchor.constraint(equalTo: widthTextField.bottomAnchor, constant: 20),
                    resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    resultLabel.topAnchor.constraint(equalTo: calCulateButton.bottomAnchor, constant: 20)
                ])
    }
    @objc public func calculateButtonTapped(){
        guard let lengthText = lengthTextField.text, !lengthText.isEmpty,
              let widthText = widthTextField.text, !widthText.isEmpty,
              let length = Double(lengthText),
              let width = Double(widthText) else {
            resultLabel.text = "Invalid input"
            return
        }
        
        let area = length * width
        resultLabel.text = "Area: \(area)"
            
    }
}


//UI Test Code


import XCTest

final class DemoUITestingAreaUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDownWithError() throws {
        app = nil
    }
    
    func testAreaCalculation() throws {
        let lenthTextField = app.textFields["Enter length"]
        let widthTextField = app.textFields["Enter width"]
        let calCulateButton = app.buttons["Calculate"]
        let resultLabel = app.staticTexts["ResultLabel"]
        
        lenthTextField.tap()
        lenthTextField.typeText("10")
        widthTextField.tap()
        widthTextField.typeText("5")
        calCulateButton.tap()
        
        XCTAssertEqual(resultLabel.label, "Area: 50.0")
    }
}

