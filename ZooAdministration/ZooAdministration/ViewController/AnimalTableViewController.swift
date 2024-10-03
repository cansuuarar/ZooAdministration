

import UIKit

class AnimalTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var name: String?
    var voice: String?
    var waterConsumption: Int?
    var zooKeeper: ZooKeeper?
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals: [Animal] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.label
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as! AnimalCell
        
        let element = animals[indexPath.row]
        
        cell.nameLabel.text = element.name
        cell.voiceLabel.text = element.voice
        cell.waterConsumptionLabel.text = String(element.waterConsumption)
        cell.zooKeeperLabel.text = element.zooKeeper?.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 148
    }
    
    
    @IBAction func addAnotherAnimal(_ sender: UIButton) {
        //segue present ise
        //self.dismiss(animated: true, completion: nil)
        
        //segue push ise
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
