//
//  main.swift
//  TaskManager
//
//  Created by Bersabeh Asefa on 2/20/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation
/*
 Task Manager Assessment Guidelines
 Track: iOS
 Module: Swift
 Objectives
 User should be able to create new tasks.
 User should be able to see a list of all tasks (Completed and Uncompleted).
 User should be able to see a list of only uncompleted tasks.
 User should be able to see a list of only completed tasks.
 User should be able to mark a task complete.
 User should be able to delete a task.
 User should be able to exit the program.
 The program should display menu(s) listing all possible actions the user can take.
 The program should include error handling to account for incorrect user input.
 Each task should have:
 Title
 Due date
 Details of task



 */


let currentDate = Date()

let calendar = Calendar.current

let twodaysFromNow = calendar.date(byAdding: .day, value: 14, to: currentDate)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy hh:mm"



// mainmanu

func mainMenu() {
    print("""
    to add a task, type 'addTask'
    
    to remove a task, type 'removeTask'
    
    "to check a task in, type 'completedTask'
    
    "to check a task out, type 'IncompletedTAsk'
""")
    
    let userInput = readLine()!
    
    if userInput == "addTask"{
        addTask()
        
    } else if userInput == "removeTask" {
        removeTask()
        
    } else if userInput == "InComplted "{
        Incomplted()
    } else if userInput == "complted"{
        complted()
    } else {
        mainMenu()
    }
    
    
}


mainMenu()

















