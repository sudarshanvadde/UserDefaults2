//
//  ViewController.swift
//  UserDefaults2
//
//  Created by Sundir Talari on 31/03/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var showingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let something = UserDefaults.standard.value(forKey: "someThing") as? String {
            
            showingLabel.text = something
        }
        
        userName.delegate = self
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        showingLabel.text = textField.text
        
        UserDefaults.standard.set(textField.text, forKey: "someThing")
        
       
        
        return true
    }



}

