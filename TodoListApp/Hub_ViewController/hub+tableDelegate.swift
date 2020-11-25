//
//  hub+dataSource.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 19/10/20.
//

import UIKit

extension HubController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle != .delete { return }
        
        //remove the content from our main data
        AppData.content.remove(at: indexPath.row)
        
        //delete the row of the table view and play an animation
        tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
    }
}
