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




let weekdaySet = IndexSet([1, 2, 4, 7])


let dueDate = Calendar.current
var weekday =  calendar.component(.weekday, from: Date())


if let nextWeekday = weekdaySet.integerGreaterThan(weekday) {
    weekday = nextWeekday
} else {
    weekday = weekdaySet.first!
}


let components = DateComponents(weekday: weekday)
calendar.nextDate(after: Date(), matching: components, matchingPolicy: .nextTime)






func mainMenu() {
    print("""
    1.to add a task, type "addTask"
    
    2.to remove a task, type "removeTask"
    
   "3.to check a task in, type "completedTask"
    
   "4.to check a task out, type "IncompletedTask"

    5.to see a completedTask, type "checkcompletedTask"
   
    6.to see a IncompletedTask, type "checkIncompletedTask"
    
    7.to see a IncompletedTask and completedTask, type "Both"

    8.to qiut a task, type "qiutTask"
""")
  
    let userInput = readLine()!
    
    if userInput == "addTask"{
        addTask()
        
    } else if userInput == "removeTask" {
        removeTask()
        
    } else if userInput == "completedTask"{
    
        Incomplted()
    } else if userInput == "IncompletedTask"{
        complted()
     
    }else if userInput == "Both"{
       availabaleTasks()

    }else if userInput == "checkcompletedTask" {
        checkcompletedTask()
    }else if userInput == "checkIncompletedTask" {
       checkIncompletedTask()
    }
    
    
        
        
        
        mainMenu()
   
}




mainMenu()




