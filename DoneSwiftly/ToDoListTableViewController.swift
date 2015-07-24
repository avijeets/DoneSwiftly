//
//  TableViewController.swift
//  DoneSwiftly
//
//  Created by Avijeet Sachdev on 7/23/15.
//  Copyright (c) 2015 Avijeet Sachdev. All rights reserved.
//


import UIKit



@objc(ToDoListTableViewController) class ToDoListTableViewController: UITableViewController {
    
    @IBAction func unwindToList(segue:UIStoryboardSegue){
        var source: AddToDoViewController = segue.sourceViewController as! AddToDoViewController
        if var item: ToDoItem = source.toDoItem{
            self.taskItems.addObject(item)
            self.tableView.reloadData()
        }
    }
    
    var taskItems: NSMutableArray = []
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loadInitialData()
    }
    
    func loadInitialData(){
        var item1 = ToDoItem(name:"Buy milk")
        self.taskItems.addObject(item1)
        var item2 = ToDoItem(name: "Buy eggs")
        self.taskItems.addObject(item2)
        var item3 = ToDoItem(name: "Read a book")
        self.taskItems.addObject(item3)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier as String) as! UITableViewCell
        
        var todoitem: ToDoItem = self.taskItems.objectAtIndex(indexPath.row) as! ToDoItem
        
        cell.textLabel?.text = todoitem.taskName as String
        
        if todoitem.completed{
            
            cell.accessoryType = .Checkmark
            
        }
            
        else{
            
            cell.accessoryType = .None
            
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem: ToDoItem = self.taskItems.objectAtIndex(indexPath.row) as! ToDoItem
        tappedItem.completed = !tappedItem.completed
        tableView.reloadData()
        
    }
}