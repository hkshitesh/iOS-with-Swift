

import UIKit

class CustomButton: UIButton {
    
    // Custom Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupButton()
    }
    
    private func setupButton(){
        setTitle("Tap Me", for: .normal)
        setTitle("Tapped", for: .highlighted)
        
        setTitleColor(.white, for: .normal)
        setTitleColor(.gray, for: .highlighted)
        
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        backgroundColor = UIColor.blue
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        
        //add shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowRadius = 5
    }
}
