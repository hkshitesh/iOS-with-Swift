

import UIKit

class ViewController: UIViewController {
    var firstView: UIView!
    var secondView: UIView!
    var thirdView: UIView!
    var currentViewInxed = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupTransitionButtons()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        firstView = UIView()
        firstView.backgroundColor = .red
        firstView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstView)
        
        NSLayoutConstraint.activate([
            firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstView.trailingAnchor.constraint(equalTo: view.trailingAnchor),            firstView.topAnchor.constraint(equalTo: view.topAnchor),
            firstView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        secondView = UIView()
        secondView.backgroundColor = .blue
        secondView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor),            secondView.topAnchor.constraint(equalTo: view.topAnchor),
            secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        thirdView = UIView()
        thirdView.backgroundColor = .green
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdView)
        
        NSLayoutConstraint.activate([
            thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            thirdView.trailingAnchor.constraint(equalTo: view.trailingAnchor),            thirdView.topAnchor.constraint(equalTo: view.topAnchor),
            thirdView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func setupTransitionButtons(){
        let transitionButton = UIButton(type: .system)
        transitionButton.setTitle("Next Transition", for: .normal)
        transitionButton.translatesAutoresizingMaskIntoConstraints = false
        transitionButton.addTarget(self, action: #selector(performTransition), for: .touchUpInside)
        view.addSubview(transitionButton)
        
        NSLayoutConstraint.activate([
            transitionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            transitionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc func performTransition()
    {
        let views = [firstView!,secondView!,thirdView!]
        
        let fromView = views[currentViewInxed]
        currentViewInxed = (currentViewInxed+1)%views.count
        let toView = views[currentViewInxed]
        let options: UIView.AnimationOptions = [.transitionFlipFromLeft, .showHideTransitionViews]
        UIView.transition(from: fromView, to: toView, duration: 1.0,options: options, completion: nil)
    }
}
