//
//  ItemStore.swift
//  Homepwner
//
//  Created by Joe Stevens on 7/24/16.
//  Copyright © 2016 Joe Stevens. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func createItem() -> Item{
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        return newItem
    }
    
    func remove(item: Item){
        if let index = allItems.indexOf(item){
            allItems.removeAtIndex(index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int){
        if fromIndex == toIndex{
            return
        }
        
        //Get reference to object being moved so you can reinsert it 
        let movedItem = allItems[fromIndex]
        
        //Remove item from array
        allItems.removeAtIndex(fromIndex)
        
        //Insert itme in array at new location 
        allItems.insert(movedItem, atIndex: toIndex)
    }
    
}
