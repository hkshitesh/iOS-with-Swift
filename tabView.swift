//
//  ViewController.swift
//  DemoTabViewVC
//
//  Created by Hitesh Sharma - Vendor on 06/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 50, y: 50, width: 200, height: 55))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    @objc func didTapButton(){
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC,animated: true)
    }

}

class FirstViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
    }
}

class SecondViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Contact"
    }
}

class ThirdViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Help"
    }
}

class FourthViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        title = "About"
    }
}

class FifthViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Settings"
    }
}


