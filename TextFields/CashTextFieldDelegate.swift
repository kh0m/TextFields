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
        let oldFormattedText = textField.text!
        print(oldFormattedText)
        
        // make it a number so we can find the penny amount
        let oldNumber = formatter.number(from: oldFormattedText)!
        print(oldNumber)
        
        // remove the decimal
        let oldUnformattedString = String(describing: oldNumber)
        let penniesString = String(oldUnformattedString.characters.filter{$0 != "."}) as NSString
        print(penniesString)
        
        // text after whatever change the user wants to make, whether it is typing a character, pasting, etc.
        let newString = penniesString.replacingCharacters(in: range, with: string)
        print(newString)

        // reformat it
        let number = NSNumber(value: Int(newString)!)
        let formattedNumber = formatter.string(from: number)
        
        textField.text = formattedNumber

        return true
    }
    
}
