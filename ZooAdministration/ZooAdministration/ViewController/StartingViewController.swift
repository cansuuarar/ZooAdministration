//
//  ViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 30.09.2024.
//

import UIKit

class StartingViewController: UIViewController {

    @IBOutlet weak var zooLabel: UILabel!
    @IBOutlet weak var clickCreation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zooLabel.text = "ZOO ADMINISTRATION"
        zooLabel.backgroundColor = .gray
        view.backgroundColor = UIColor.label
        
        var zoo = Zoo()
    }

    @IBAction func toMiddleController(_ sender: UIButton) {
       // self.performSegue(withIdentifier: "toMiddleController", sender: self)
    }
    
}

// zoo projesinde en az iki ekranlı olacak. hayvanları listeleyeceksin(table view)

