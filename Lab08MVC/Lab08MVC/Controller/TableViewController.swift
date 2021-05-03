import UIKit

class TableViewController: UITableViewController {

    var listas: [Listas] = ModeloDatos().Datos()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return listas.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listas[section].items.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listas[section].header
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        
        cell.textLabel?.text = listas[indexPath.section].items[indexPath.row]
        
        return cell
    }

}
