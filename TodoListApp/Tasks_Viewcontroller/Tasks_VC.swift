//
//  Tasks_VC.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 23/09/20.
//

import UIKit

class Tasks_VC: UIViewController{
    
    @IBOutlet weak var taskList: UITableView!
    
    var currentFarm: Farm!
    
    override func viewDidLoad() {
        
        taskList.dataSource = self
        taskList.delegate = self
        
        self.taskList.reloadData()
        
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "loadTask"), object: nil)
    }
    
    @objc func loadList(notification: NSNotification){
        let newIndexPath = IndexPath(row: currentFarm.tasks.count - 1,
                                     section: 0)
        
        self.taskList.insertRows(at: [newIndexPath], with: UITableView.RowAnimation.right)
        self.taskList.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: nil)
        
        if segue.destination is NewTask_VC{
            
            let vc = segue.destination as? NewTask_VC
            vc?.currentFarm = currentFarm
            
        }
    }
}
