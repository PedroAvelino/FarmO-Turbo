//
//  MyCell.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 23/09/20.
//

import UIKit

class BaseCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var farmDesc: UILabel!
    @IBOutlet weak var statusText: UILabel!
    var status: FarmStatus!


}
