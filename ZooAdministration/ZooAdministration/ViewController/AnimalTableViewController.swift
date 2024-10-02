//
//  AnimalTableViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 1.10.2024.
//

import UIKit
/*
class AnimalTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var name: String?
    var voice: String?
    var waterConsumption: Int?
    
    @IBOutlet weak var tableView: UITableView!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let appDelegate {
            return appDelegate.animals.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as! AnimalCell
        
        let element = animals[indexPath.row]
        
        cell.nameLabel.text = element.name
        cell.voiceLabel.text = element.voice
        cell.waterConsumptionLabel.text = String(element.waterConsumption)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 148
    }
    
}

*/
