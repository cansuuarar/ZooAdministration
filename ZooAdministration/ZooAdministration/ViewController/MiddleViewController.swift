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
    
    var animals: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func createAnimal(_ sender: UIButton) {
        let name = nameField.text ?? ""
        let voice = animalVoice.text ?? ""
        let waterConsumption = Int(waterConsumptionTextField.text ?? "") ?? 0
                
        let newAnimal = Animal(name: name, voice: voice, waterConsumption: waterConsumption)
        animals.append(newAnimal)
        //self.performSegue(withIdentifier: "toAnimal", sender: self)
        
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
            destinationVC.animals = animals  // Tüm array i aktarmak için
        }
        
        
    }
    
    
}
