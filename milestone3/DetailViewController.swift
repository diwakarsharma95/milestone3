//
//  DetailViewController.swift
//  milestone3
//
//  Created by Diwakar Sharma on 23/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var ItemQuantityLabel: UILabel!
    @IBOutlet weak var ItemNameLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = ItemNameLabel {
                label.text = detail.itemName
            }
            if let label = ItemQuantityLabel {
                label.text = detail.itemQuantity
            }
            if let label = detailDescriptionLabel {
                label.text = detail.itemDescription
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Item? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

