//
//  ViewController.swift
//  DemoGestureProg
//
//  Created by Hitesh Sharma - Vendor on 06/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gestureView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tap Gesture Recognizer
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        gestureView.addGestureRecognizer(tapGestureRecognizer)
        
        //pinch Gesture Recognizer
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        gestureView.addGestureRecognizer(pinchGestureRecognizer)
        
        let swipGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipGestureRecognizer.direction = .down
        gestureView.addGestureRecognizer(swipGestureRecognizer)
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer){
        print("Tap Gesture Recognized")
    }
    
    @objc func handlePinch(_ sender: UIPinchGestureRecognizer){
        gestureView.transform = gestureView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
        print("Pinch Gesture Recognised")
    }
    
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer){
        print("Swipe Gesture Recognized")
        gestureView.backgroundColor = .random()
    }
}

extension UIColor {
    static func random()  -> UIColor {
        return UIColor(
            red: CGFloat(arc4random_uniform(256))/255.0,
            green: CGFloat(arc4random_uniform(256))/255.0,
            blue: CGFloat(arc4random_uniform(256))/255.0,
            alpha: 1.0
        )
    }
}
