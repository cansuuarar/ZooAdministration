//
//  ZooKeeperTableViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 2.10.2024.
//

import UIKit

class ZooKeeperTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var zooKeeperTableView: UITableView!
    
    var zooKeeperName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.label
        zooKeeperTableView.delegate = self
        zooKeeperTableView.dataSource = self
        zooKeeperTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ZooKeeperManager.shared.zooKeepers.count
    }
    
    /*
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
     */
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = zooKeeperTableView.dequeueReusableCell(withIdentifier: "zooKeeperCell", for: indexPath) as! ZooKeeperCell
        
        let element = ZooKeeperManager.shared.zooKeepers[indexPath.row]
        
        cell.zooKeeperNameLabel.text = element.name
        cell.zooKeeperAnimals.text = element.animals.first?.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 148
    }
    
    
    @IBAction func addAnotherZooKeeper(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

  
}
