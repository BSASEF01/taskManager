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

//This is good but we might want the due date to be assigned when we make a task. There are a couple reasons why we would want to change it. First, we wont have the due date tied to the task as it is currently. It would be nice to be able to access a date property from inside our task object. Second, if we leave this program running for a few days it will still be saying the date is two weeks from when we started the program.
let currentDate = Date()

let calendar = Calendar.current

let twodaysFromNow = calendar.date(byAdding: .day, value: 14, to: currentDate)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MM/dd/yyyy hh:mm"



//Missing options to list all tasks, list only completed tasks, and list only incomplete tasks
//Also might be nice to have the option to quit from the main menu

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

















