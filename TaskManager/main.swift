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
    1.To add a task, type "add"
    
    2.To remove a task, type "remove"
    
    3.To check a  task in, type "completed"
    
    4.To check a task out, type "Incompleted"

    5.To see a completedTask, type "printcompletedTask"
   
    6.To see a IncompletedTask, type "printIncompletedTask"
    
    7.To see a IncompletedTask and completedTask, type "Both"
    
    8.To see a availabaleTasks, type "checkavailableTasks"

    9.To qiut a task, type "qiutTask"
""")
  
    let userInput = readLine()!
    
    if userInput == "add"{
        addTask()
        
    } else if userInput == "remove" {
        removeTask()
        
    } else if userInput == "completed"{
    
        Incomplted()
    } else if userInput == "Incompleted"{
        complted()
     
    }else if userInput == "Both"{
       availabaleTasks()

    }else if userInput == "printcompletedTask" {
        checkcompletedTask()
    
    }else if userInput == "printIncompletedTask" {
       checkIncompletedTask()
    
    }else if userInput == "checkavailableTasks"{
          availabaleTasks()
    }
   
    
  mainMenu()
  
        
}



mainMenu()




