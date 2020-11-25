//
//  NewTask_VC.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 17/11/20.
//

import UIKit

class NewTask_VC: UIViewController{
    
    @IBOutlet weak var taskName: UITextField!
    
    var currentFarm: Farm!
    
    @IBAction func ConfirmFarm(_ sender: Any) {
        
        if taskName.text!.isEmpty {
            return
        }
        
        for farm in AppData.content
        {
            
            if farm.hash == currentFarm.hash
            {
                
                let newTask = FarmTask(name: taskName.text!, completed: false)
                
                //farm.tasks.append(newTask)
            }
        }
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "loadTask"), object: nil)
        
        dismiss(animated: true, completion: nil)
        
    }
}
