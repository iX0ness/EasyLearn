//
//  AddWordViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 07/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

typealias NewWord = (english: String, translation: String)

protocol AddWordViewControllerDelegate: class {
    func didFinishAddWord(_ word: NewWord)
}

class AddWordViewController: UIViewController {


    var coordinator: WordsLibraryCoordinator?
    weak var delegate: AddWordViewControllerDelegate?



    @IBOutlet weak var englishWordTextField: UITextField!
    @IBOutlet weak var translationTextField: UITextField!
    @IBOutlet weak var addWordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        englishWordTextField.delegate = self
        translationTextField.delegate = self
       
    }


    @IBAction func addWord(_ sender: UIButton) {
        guard let englishWord = englishWordTextField.text, let translation = translationTextField.text else {return}
        let word = NewWord(englishWord, translation)
        delegate?.didFinishAddWord(word)
        coordinator?.pop()
    }


}
