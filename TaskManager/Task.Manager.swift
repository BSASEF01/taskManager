//
//  Task.Manager.swift
//  TaskManager
//
//  Created by Bersabeh Asefa on 2/21/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation


func dateOut(){
    print("""

Task  was cvarlated /removed on:

""")
    print(dateFormatter.string(from: currentDate))
    print("""

The Task is due on:

""")
    print(dateFormatter.string(from: twodaysFromNow!))
    
}


func quitProgram() {
    print("""

Would you like to quit the program? type yes or no

""")
    var user = readLine()!
    if user == "yes" {
        exit(0)
    } else if user == "no"{
        mainMenu()
    } else {
        print("Valid value please")
        quitProgram()
    }
}


 func addTaskFrist() {
    print("Which task would you like to add?")
    var userInput = Task(name: readLine()!)
    taskManager.append(userInput)
    print("Task added")
    mainMenu()
}

func addTask() {
    print("Which task would you like to add?")
    var userInput = Task(name: readLine()!)
    taskManager.append(userInput)
    print("task added on")
    print(dateFormatter.string(from: currentDate))
    quitProgram()
    mainMenu()
}



func removeTask() {
    print("Which task would you like to remove?")
    for (n, c) in taskManager.enumerated()
    {
        if c.taskInComplted  == true {
            print("\(n): '\(c.name)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
        if  userInput > taskManager.count - 1 {
            print("Please enter a valid number")
            removeTask()
        } else {
            taskManager.remove(at: userInput)
            dateOut()
            quitProgram()
            mainMenu()
        }
        
    } else {
        print("Please put in a number")
        removeTask()
    }
}


func Incomplted() {
    print("Which task would you like to Incomplted?")
    for (n, c) in taskManager.enumerated() {
        if c.taskInComplted == true {
            print("\(n): '\(c.name)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
        if userInput > taskManager.count - 1 {
            print("Please put in a valid number")
            Incomplted()
        } else {
            taskManager[userInput].taskInComplted == true;           quitProgram()
            mainMenu()
        }
    } else {
        print("Please enter a valid number")
        Incomplted()
    }
    
}


func complted (){
    print("Which Task would you like to complted?")
    for (n, c) in taskManager.enumerated() {
        if c.taskInComplted == false{
            print("\(n): '\(c.name)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
        if userInput > taskManager.count - 1 {
            print("Enter a valid number please")
            complted()
        } else {
            taskManager[userInput].taskInComplted == false
            dateOut()
            quitProgram()
            mainMenu()
            
        }
    } else {
        print("Please enter a valid number")
        complted()
    }
}


