//
//  newFarmController.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 10/11/20.
//

import UIKit

class NewFarmController: UIViewController{
    
    @IBOutlet weak var farmName: UITextField!
    
    @IBOutlet weak var farmDescription: UITextField!
    
    
    
    @IBAction func ConfirmFarm(_ sender: Any) {
        
        if farmName.text!.isEmpty {
            return
        }
        
        if  farmDescription.text!.isEmpty {
            return
        }
        
        let nameOfFarm = farmName.text!
        let farmDesc = farmDescription.text!
        
        let newFarm = Farm(name: nameOfFarm, description: farmDesc, completed: FarmStatus.Incomplete, tasks: [], hash: AppData.createFarmHash(name: nameOfFarm, description: farmDesc))
        
        AppData.content.append(newFarm)
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
    
