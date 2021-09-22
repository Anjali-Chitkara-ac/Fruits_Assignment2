//
//  ViewController.swift
//  Fruits_Assignment2
//
//  Created by Anjali Chitkara on 9/21/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruits = ["Apple","Banana","Cherry","Guava","Mango","Pineapple","Plum","Pomegranate","Strawberry","Watermelon"]

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: fruits[indexPath.row])
        cell.lblImage.text = fruits[indexPath.row]
        return cell
    }

}

