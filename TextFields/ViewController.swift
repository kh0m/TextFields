//
//  ViewController.swift
//  TextFields
//
//  Created by Ken Hom on 9/24/16.
//  Copyright © 2016 Ken Hom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    
    // MARK: Variables
    let zipTextFieldDelegate = ZipTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set delegates
        zipField.delegate = zipTextFieldDelegate
        cashField.delegate = cashTextFieldDelegate
    }



}

