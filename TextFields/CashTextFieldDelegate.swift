//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by Ken Hom on 9/24/16.
//  Copyright © 2016 Ken Hom. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.currency
        
        // current text
        let oldText = textField.text! as NSString
        // text after whatever change the user wants to make, whether it is typing a character, pasting, etc.
        let newText = oldText.replacingCharacters(in: range, with: string)
        
        let pennies = Double(newText)! / 100
        let number = NSNumber(value: pennies)
        let formattedNumber = formatter.string(from: number)
        
        textField.text = formattedNumber

        return true
    }
    
}
