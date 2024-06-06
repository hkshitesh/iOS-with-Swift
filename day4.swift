

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("loadView -- 1")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad -- 1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear -- 1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear -- 1")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear -- 1")
    }
   
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}





//WebView:


import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        //Load URL
        if let url = URL(string: "https://www.google.com"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}


//SafariVieeController

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupOpenSafariButton()
    }

    func setupOpenSafariButton() {
        let openSafariButton = UIButton(type: .system)
        openSafariButton.setTitle("Open Safari", for: .normal)
        openSafariButton.translatesAutoresizingMaskIntoConstraints = false
        openSafariButton.addTarget(self, action: #selector(openSafariButtonTapped), for: .touchUpInside)
        
        view.addSubview(openSafariButton)

        NSLayoutConstraint.activate([
            openSafariButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            openSafariButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func openSafariButtonTapped() {
        if let url = URL(string: "https://www.google.com") {
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
    }
}


//ScrollView (Dynamic)



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



//Localiztion

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = NSLocalizedString("hello", comment: "Hello, World")
        button.setTitle(NSLocalizedString("button_title", comment: "Press Me"), for: .normal)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = NSLocalizedString("button_title", comment: "Button Prssed")
    }

}



"hello" = "Hello, World!";
"button_title" = "Press Me";


"hello" = "¡Hola, Mundo!";
"button_title" = "Presióname";

