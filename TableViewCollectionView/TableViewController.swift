import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //We need to register the table view cell to be used MANY times within the table view
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    }
    
    //set number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    //set number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //design our cell
        
       //return the cell that we want to use in each row, and set the data for the cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = "Sheridan College"
        cell.imageView?.image = UIImage(named: "SlideUp")
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }


}
