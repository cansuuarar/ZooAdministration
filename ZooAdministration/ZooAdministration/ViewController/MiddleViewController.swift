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
    
    
    var name: String?
    var voice: String?
    var waterConsumption: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func createAnimal(_ sender: UIButton) {
        name = nameField.text ?? ""
        voice = animalVoice.text ?? ""
        waterConsumption = Int(waterConsumptionTextField.text ?? "")
        //self.performSegue(withIdentifier: "toAnimal", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnimal" {
            let destinationVC = segue.destination as! AnimalTableViewController2
            destinationVC.name = name
            destinationVC.voice = voice
            destinationVC.waterConsumption = waterConsumption
            
            let animal = Animal(name: name!, voice: voice!, waterConsumption: waterConsumption!)
            destinationVC.animals.append(animal)
            
        }
    }
}
