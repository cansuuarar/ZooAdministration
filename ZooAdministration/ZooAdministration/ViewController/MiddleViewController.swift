//
//  MiddleViewController.swift
//  ZooAdministration
//
//  Created by CANSU ARAR on 30.09.2024.
//

import UIKit

class MiddleViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var animalVoice: UITextField!
    @IBOutlet weak var waterConsumptionTextField: UITextField!
    @IBOutlet weak var createAnimalButton: UIButton!
   
    @IBOutlet weak var zooKeeperPickerView: UIPickerView!
    
    var name: String?
    var voice: String?
    var waterConsumption: Int?
    var zooKeeper: ZooKeeper?
    
    //singleton pattern incele.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.label
        zooKeeperPickerView.delegate = self
        zooKeeperPickerView.dataSource = self
        zooKeeperPickerView.setValue(UIColor.red, forKeyPath: "textColor")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        ZooKeeperManager.shared.zooKeepers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let element = ZooKeeperManager.shared.zooKeepers[row].name
        return element
    }

    
    @IBAction func createAnimal(_ sender: UIButton) {
        let name = nameField.text ?? ""
        let voice = animalVoice.text ?? ""
        let waterConsumption = Int(waterConsumptionTextField.text ?? "") ?? 0
        
        let index = zooKeeperPickerView.selectedRow(inComponent: 0)
        
        let newAnimal = Animal(name: name, voice: voice, waterConsumption: waterConsumption, zooKeeper: ZooKeeperManager.shared.zooKeepers[index])
        
        
        AnimalManager.shared.animals.append(newAnimal)
        
        ZooKeeperManager.shared.zooKeepers[index].animals.append(newAnimal)
        
        nameField.text = ""
        animalVoice.text = ""
        waterConsumptionTextField.text = ""
   
    }
    
    
    @IBAction func listAnimals(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAnimal", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnimal" {
            let destinationVC = segue.destination as! AnimalTableViewController
            
        }
    }
}


/*
 singelton: ramde. uygulama kapandığında gider.

*/
