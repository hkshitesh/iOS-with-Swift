
import UIKit

class ViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var contentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setupContentView()
        addDynamicContent()
        // Do any additional setup after loading the view.
    }
    func setupScrollView(){
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    func setupContentView(){
        contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
    }
    func addDynamicContent(){
        
        var previousLabel: UILabel?
        for i in 1...40 {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "List Item \(i)"
            label.backgroundColor = .cyan
            label.textAlignment = .center
            contentView.addSubview(label)
            NSLayoutConstraint.activate([
                label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
            ])
            
            if let previous = previousLabel{
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 20)
                ])
            }else{
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20)
                ])
            }
            previousLabel = label
        }
        
        if let lastLabel = previousLabel{
            NSLayoutConstraint.activate([
                lastLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            ])
        }
    }
}

