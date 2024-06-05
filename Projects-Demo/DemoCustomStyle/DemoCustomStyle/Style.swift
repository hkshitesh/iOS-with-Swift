
import UIKit
class Style{
    static func applyPrimaryButtonStyle(to button: UIButton){
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.shadowRadius = 5
    }
    
    static func applyPrimaryLabelStyle(to label:UILabel){
        label.tintColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 24)
    }
}
