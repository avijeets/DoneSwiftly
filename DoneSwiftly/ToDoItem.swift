//
//  ToDoItem.swift
//  DoneSwiftly
//
//  Created by Avijeet Sachdev on 7/23/15.
//  Copyright (c) 2015 Avijeet Sachdev. All rights reserved.
//


import Foundation

class ToDoItem: NSObject{
    
    var taskName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String){
        self.taskName = name
    }
    
}
