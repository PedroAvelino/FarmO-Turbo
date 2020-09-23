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
    
    var number = 0;
    
    override func viewDidLoad() {
        title = "Farms"
        
        farmList.dataSource = self
        farmList.register(UITableViewCell.self, forCellReuseIdentifier: "pedro")
    
    }
    
    @IBAction func createNewItem(_ sender: Any) {
        
        
    }
    
    
    

}

extension HubController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pedro", for: indexPath)
        cell.textLabel?.text = "Task: \(number)";
        
        number += 1;
        
        return cell;
    }
}
