//
//  item.swift
//  milestone3
//
//  Created by Diwakar Sharma on 23/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import Foundation

class Item{
    var itemName:String
    var itemQuantity:String
    var itemDescription:String
    
    init(itemName:String,itemQuantity:String,itemDescription:String) {
        self.itemName = itemName
        self.itemQuantity = itemQuantity
        self.itemDescription = itemDescription
    }
}
