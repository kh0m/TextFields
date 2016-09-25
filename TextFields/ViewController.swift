//
//  ViewController.swift
//  TextFields
//
//  Created by Ken Hom on 9/24/16.
//  Copyright © 2016 Ken Hom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    // MARK: Properties
    
    let zipTextFieldDelegate = ZipTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set delegates
        zipField.delegate = zipTextFieldDelegate
        cashField.delegate = cashTextFieldDelegate
        lockableField.delegate = self
    }

    // MARK: Text Field Delegate
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.lockSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            lockableField.resignFirstResponder()
        }
    }

}

