//
//  hub+DataSource.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 20/10/20.
//

import UIKit


extension HubController: UITableViewDataSource{
    
    
    //Set the size of the table view to be equal to our main data
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell!
        
        cell = tableView.dequeueReusableCell(withIdentifier: "baseCell", for: indexPath) as! BaseCell
        
        let index = indexPath.item
        
        (cell as! BaseCell).title.text = AppData.content[index].name
        (cell as! BaseCell).farmDesc.text = AppData.content[index].description!
        (cell as! BaseCell).statusText.text = AppData.content[index].completed.rawValue
        
        return cell
    }
}
