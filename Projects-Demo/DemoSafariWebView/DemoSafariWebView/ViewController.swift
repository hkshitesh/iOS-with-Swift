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
