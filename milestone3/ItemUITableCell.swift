//
//  ItemUITableCell.swift
//  milestone3
//
//  Created by Diwakar Sharma on 23/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import UIKit

class ItemUITableCell: UITableViewCell {
    var itemName:String = ""
    var itemQuantity:String = ""
    var itemDescription:String = ""
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemQuantityLabel: UILabel!
}
