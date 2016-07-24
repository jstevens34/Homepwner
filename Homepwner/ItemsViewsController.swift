//
//  ItemsViewsController.swift
//  Homepwner
//
//  Created by Joe Stevens on 7/24/16.
//  Copyright © 2016 Joe Stevens. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    var itemStore : ItemStore!
    
    @IBAction func addNewItem(sender: AnyObject){
        
    }
    
    @IBAction func toggleEditingMode(sender: AnyObject){
        //If you are currently in editing mode...
        if editing{
            //Change text of button to inform user of state
            sender.setTitle("Edit", forState: .Normal)
            
            //Turn off editing mode
            setEditing(false, animated: true)
        }
        else{
            //Change text of button to inform user of state
            sender.setTitle("Done", forState: .Normal)
            
            //Enter editing mode
            setEditing(true, animated: true)
        }
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Get a new or recycled cell
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        
        //Set the text on the cell with the description of the item 
        //that is at the nth index of items, where n = row this cell
        //will appear in on the tableview 
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get the height of the status bar 
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    
    
}
