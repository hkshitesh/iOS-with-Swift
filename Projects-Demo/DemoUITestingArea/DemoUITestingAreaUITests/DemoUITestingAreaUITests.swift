
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
