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
    1.to add a task, type "addTask"
    
    2.to remove a task, type "removeTask"
    
   "3.to check a task in, type "completedTask"
    
   "4.to check a task out, type "IncompletedTask"
""")
    //testing
    let userInput = readLine()!
    
    if userInput == "addTask"{
        addTask()
        
    } else if userInput == "removeTask" {
        removeTask()
        
    } else if userInput == "IncompletedTask"
    {
        Incomplted()
    } else if userInput == "completedTask"{
        complted()
    } else {
        mainMenu()
    }
    
    
}


mainMenu()

















