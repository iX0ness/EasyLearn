//
//  AddWordViewController+TextField.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 07/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

extension AddWordViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        guard textField == self.translationTextField && self.englishWordTextField.text == "" else {return true }
        return false
    }

    override func becomeFirstResponder() -> Bool {
        englishWordTextField.becomeFirstResponder()
        return true
    }
}
