//
//  ViewController.swift
//  DoneSwiftly
//
//  Created by Avijeet Sachdev on 7/23/15.
//  Copyright (c) 2015 Avijeet Sachdev. All rights reserved.
//


import UIKit

class AddToDoViewController: UIViewController {
    
    var toDoItem: ToDoItem?
    
    @IBOutlet var textfield : UITextField!
    @IBOutlet var doneButton : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? NSObject != self.doneButton{
            return
        }
        if !self.textfield.text.isEmpty{
            self.toDoItem = ToDoItem(name: self.textfield.text)
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
}

