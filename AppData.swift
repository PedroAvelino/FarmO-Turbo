//
//  AppData.swift
//  TodoListApp
//
//  Created by Pedro Avelino on 23/09/20.
//

import UIKit

struct Farm
{
    
    var name: String
    var description: String?
    var completed: FarmStatus
    
    var tasks: [FarmTask]
    
    var hash: Int?
}

struct FarmTask {
    var name: String
    var completed: Bool
}

class AppData
{
    //Create our array of content
    static var content : [Farm] = []
    
    //Function to create a farm hash
    class func createFarmHash(name: String, description: String) -> Int{
        var hasher = Hasher()
        
        hasher.combine(name)
        hasher.combine(description)
        
        return hasher.finalize()
    }
    
}


enum FarmStatus : String {
    case Incomplete
    case Complete
}
