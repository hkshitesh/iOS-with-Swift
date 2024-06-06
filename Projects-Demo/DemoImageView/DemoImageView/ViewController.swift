//
//  ViewController.swift
//  DemoImageView
//
//  Created by Hitesh Sharma - Vendor on 07/06/24.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var imageView: UIImageView!
    var changeImageButton: UIButton!
    var scrollView: UIScrollView!
    
    let images = ["img1","img2","img3","img4"]
    var currentImageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupScrollView()
        setupImageView()
        setupChangeImageButton()
        displayImage(named: images[currentImageIndex])
        // Do any additional setup after loading the view.
    }
    
    func setupScrollView(){
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        
        scrollView.maximumZoomScale = 6.0
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
                    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    scrollView.topAnchor.constraint(equalTo: view.topAnchor),
                    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        
        
    }
    
    func setupImageView(){
        imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
                    imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                    imageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                    imageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                    imageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                    imageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                    imageView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
                ])
        
    }
    func setupChangeImageButton(){
        changeImageButton = UIButton(type: .system)
                changeImageButton.setTitle("Change Image", for: .normal)
                changeImageButton.translatesAutoresizingMaskIntoConstraints = false
                changeImageButton.addTarget(self, action: #selector(changeImage), for: .touchUpInside)
                view.addSubview(changeImageButton)

                NSLayoutConstraint.activate([
                    changeImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    changeImageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
                ])
        
    }
    @objc func changeImage() {
            currentImageIndex = (currentImageIndex + 1) % images.count
            displayImage(named: images[currentImageIndex])
        }

        func displayImage(named imageName: String) {
            imageView.image = UIImage(named: imageName)
        }

        // UIScrollViewDelegate method
        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return imageView
        }
}

