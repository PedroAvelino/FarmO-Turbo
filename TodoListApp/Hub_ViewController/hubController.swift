//
//  hubController.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 22/09/20.
//

import UIKit

class HubController: UIViewController{
    
    @IBOutlet weak var farmList: UITableView!
    
    @IBOutlet weak var newFarmBtn: UIBarButtonItem!
    
    var cellName = "";
    var farmToGo: Farm!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Farms"
        farmList.dataSource = self
        farmList.delegate = self
        
        self.farmList.reloadData()
        
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
    
    }
    
    @objc func loadList(notification: NSNotification){
        
        let newIndexPath = IndexPath(row: AppData.content.count - 1,
                                     section: 0)
        
        self.farmList.insertRows(at: [newIndexPath], with: UITableView.RowAnimation.right)
        
        self.farmList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = farmList.cellForRow(at: indexPath) as! BaseCell
        
        cellName = cell.title.text!
        farmToGo = AppData.content[indexPath.item]
        
        performSegue(withIdentifier: "toTask", sender: farmList)
    }
    
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat
    {
    
        return 96
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: nil)
        
        if segue.destination is Tasks_VC{
            
            let vc = segue.destination as? Tasks_VC
            vc?.title = cellName
            vc?.currentFarm = farmToGo
            
        }
    }
}
