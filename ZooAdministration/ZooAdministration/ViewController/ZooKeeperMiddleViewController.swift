//
//  ZooKeeperMiddleViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 3.10.2024.
//

import UIKit

class ZooKeeperMiddleViewController: UIViewController {

    
    @IBOutlet weak var zooKeeperNameTextField: UITextField!
    
    var zooKeeper: ZooKeeper?
    //var zooKeepers: [ZooKeeper] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addZooKeeper(_ sender: UIButton) {
        let zooKeeperName = zooKeeperNameTextField.text ?? ""
        let zooKeeper = ZooKeeper(name: zooKeeperName, animals: [])
        ZooKeeperManager.shared.zooKeepers.append(zooKeeper)
        zooKeeperNameTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toZooKeeperView" {
            let destinationVC = segue.destination as! ZooKeeperTableViewController
        }
    }
    
    
}
