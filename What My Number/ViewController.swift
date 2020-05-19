//
//  ViewController.swift
//  What My Number
//
//  Created by TrungLD on 5/19/20.
//  Copyright © 2020 TrungLD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberObj = UserDefaults.standard.object(forKey: "number")
        if let number = numberObj as? String {
            textField.text = number
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: UIButton) {
        UserDefaults.standard.set(textField.text, forKey: "number")
    }
    
}

