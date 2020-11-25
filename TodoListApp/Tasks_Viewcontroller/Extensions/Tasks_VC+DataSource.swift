//
//  Tasks_VC+DataSource.swift
//  TodoListApp
//
//  Created by Rodolfo Avelino on 17/11/20.
//

import UIKit

extension Tasks_VC: UITableViewDataSource{
    
    
    //Set the size of the table view to be equal to our main data
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFarm.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell!
        
        cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! BaseCell
        
        let index = indexPath.item
        
        (cell as! TaskCell).title.text = currentFarm.tasks[index].name
        
        return cell
    }
}
