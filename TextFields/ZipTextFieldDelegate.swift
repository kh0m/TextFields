//
//  ZipTextFieldDelegate.swift
//  TextFields
//
//  Created by Ken Hom on 9/24/16.
//  Copyright © 2016 Ken Hom. All rights reserved.
//

import Foundation
import UIKit

class ZipTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // current text
        let oldText = textField.text! as NSString
        // text after whatever change the user wants to make, whether it is typing a character, pasting, etc.
        let newText = oldText.replacingCharacters(in: range, with: string)
        // check length of newText
        return newText.characters.count > 5 ? false : true
    }
}
