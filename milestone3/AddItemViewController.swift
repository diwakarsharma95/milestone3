//
//  AddItemViewController.swift
//  milestone3
//
//  Created by Diwakar Sharma on 23/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var itemNameInput: UITextField!
    @IBOutlet weak var itemQuantityInput: UITextField!
    @IBOutlet weak var itemDescriptionInput: UITextView!
    @IBOutlet weak var doneButton: UIButton!
    
    @objc
    @IBAction func addItem() -> Void {
        
        let newItemName = itemNameInput.text!
        let newItemQuantity = itemQuantityInput.text!
        let newItemDescription = itemDescriptionInput.text!
        
        let newItem = Item(itemName:newItemName,itemQuantity:newItemQuantity,itemDescription:newItemDescription)
        Storage.shared.objects.append(newItem)
        performSegue(withIdentifier: "backToTable", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemQuantityInput.delegate = self
        doneButton.isEnabled = false
        
        itemQuantityInput.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        itemNameInput.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        
        
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @objc func editingChanged(_ textField: UITextField) {
        if textField.text?.count == 1 {
            if textField.text?.first == " " {
                textField.text = ""
                return
            }
        }
        guard
            let name = itemNameInput.text, !name.isEmpty,
            let quantity = itemQuantityInput.text, !quantity.isEmpty
            else {
                self.doneButton.isEnabled = false
                return
        }
        doneButton.isEnabled = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
