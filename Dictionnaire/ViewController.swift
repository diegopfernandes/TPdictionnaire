//-------
import UIKit
//-------
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arrayEnglish: [String]!
    var arrayFrancais: [String]!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = "Hello"
        return cell
    }
    
 
    
    //-------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manageUser()
 
    }
    func manageUser() {
        if UserDefaults.standard.object(forKey: "french") != nil {
            arrayFrancais = UserDefaults.standard.object(forKey: "french") as! [String]
            arrayEnglish = UserDefaults.standard.object(forKey: "english") as! [String]
        } else {
            arrayFrancais = [String]()
            arrayEnglish = [String]()
        }
    }

    //-------
}
