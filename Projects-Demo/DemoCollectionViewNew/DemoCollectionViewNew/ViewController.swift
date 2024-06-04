//
//  ViewController.swift
//  DemoCollectionViewNew
//
//  Created by Hitesh Sharma - Vendor on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    var images: [String] = ["1","2","3","4","5","6","1","2","3","4","5","6","1","2","3","4","5","6"]
    var personName: [String] = ["John", "Tom","Amit","Kapil", "Adam","Kibble","John", "Tom","Amit","Kapil", "Adam","Kibble","John", "Tom","Amit","Kapil", "Adam","Kibble"]
   
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return personName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        cell.TitleLbl.text = personName[indexPath.row]
        return cell
    }
}

