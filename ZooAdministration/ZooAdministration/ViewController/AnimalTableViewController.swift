

import UIKit

class AnimalTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var name: String?
    var voice: String?
    var waterConsumption: Int?
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals: [Animal] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()

    }
    /*
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            tableView.reloadData() // Tabloyu güncelleyin
        }
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
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
    
    
    @IBAction func reCreateAnimal(_ sender: UIButton) {
        //segue present ise
        //self.dismiss(animated: true, completion: nil)
        
        //segue push ise
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
