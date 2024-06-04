//
//  ViewController.swift
//  DemoTableView
//
//  Created by Hitesh Sharma - Vendor on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    var data = [TableData(sectionType: "Animals", sectionName: ["Rabbit","Cat","Dog","Monkey","Rabbit","Cat","Dog","Monkey"]),
                TableData(sectionType: "Electronics", sectionName: ["TV","Radio","Mobile","Laptop","TV","Radio","Mobile","Laptop"]),
                TableData(sectionType: "Fruits", sectionName: ["Mango","Banana","Orange","Apple","Mango","Banana","Orange","Apple"])
                          ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderTopPadding = 0
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].sectionName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.section].sectionName[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .orange
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.backgroundColor = .cyan
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section].sectionName[indexPath.row]!) is selected....")
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
