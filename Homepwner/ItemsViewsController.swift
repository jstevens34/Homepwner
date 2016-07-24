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
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    
    
}
