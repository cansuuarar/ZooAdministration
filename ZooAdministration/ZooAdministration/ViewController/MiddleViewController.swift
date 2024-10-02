//
//  MiddleViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 30.09.2024.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var animalVoice: UITextField!
    @IBOutlet weak var waterConsumptionTextField: UITextField!
    
    
    @IBOutlet weak var createAnimalButton: UIButton!
    
    
    @IBOutlet weak var zooKeeperTextField: UITextField!
    
    var name: String?
    var voice: String?
    var waterConsumption: Int?
    var zooKeeper: ZooKeeper?
    
    var animals: [Animal] = []
    var zooKeepers: [ZooKeeper] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.label
    }
    
    @IBAction func createAnimal(_ sender: UIButton) {
        let name = nameField.text ?? ""
        let voice = animalVoice.text ?? ""
        let waterConsumption = Int(waterConsumptionTextField.text ?? "") ?? 0
        
        let zooKeeperName = zooKeeperTextField.text ?? ""
        let zooKeeper = ZooKeeper(name: zooKeeperName, animals: [])
                
        let newAnimal = Animal(name: name, voice: voice, waterConsumption: waterConsumption, zooKeeper: zooKeeper)
        
        animals.append(newAnimal)
        zooKeepers.append(zooKeeper)
        
        //self.performSegue(withIdentifier: "toAnimal", sender: self)
        
        
        nameField.text = ""
        animalVoice.text = ""
        waterConsumptionTextField.text = ""
        zooKeeperTextField.text = ""
    }
    
    
    @IBAction func listAnimals(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAnimal", sender: self)
    }
    
    
    @IBAction func createZooKeeper(_ sender: UIButton) {
        let zooKeeperName = zooKeeperTextField.text ?? ""
        let zooKeeper = ZooKeeper(name: zooKeeperName, animals: [])
        
        zooKeepers.append(zooKeeper)
        
        zooKeeperTextField.text = ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnimal" {
            let destinationVC = segue.destination as! AnimalTableViewController
            destinationVC.animals = animals  // Tüm array i aktarmak için
        }
        
        if segue.identifier == "toZooKeeper" {
            let destinationVC = segue.destination as! ZooKeeperTableViewController
            destinationVC.zooKeepers = zooKeepers
        }
    }
    
    
}
