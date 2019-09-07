//
//  AddWordViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 07/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class AddWordViewController: UIViewController {

    var coordinator: WordsLibraryCoordinator?

    @IBOutlet weak var englishWordTextField: UITextField!
    @IBOutlet weak var translationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        englishWordTextField.delegate = self
        translationTextField.delegate = self
       
    }




}
