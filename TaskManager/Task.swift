//
//  Task.swift
//  TaskManager
//
//  Created by Bersabeh Asefa on 2/21/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation

class Task {
        var name: String
        
        var  taskInComplted =  true
        var dueDate: Date
        var  taskComplted = false
        
    
    
    
        
    init(name: String, dueDate: Date) {
            self.name = name
        self.dueDate = dueDate
        
        }
        
        
    }

var taskManager = [Task]()
    
    
    
    
    
