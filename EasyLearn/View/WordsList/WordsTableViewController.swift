//
//  WordsTableViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController, AddWordViewControllerDelegate {

    var coordinator: WordsLibraryCoordinator?
    var viewModel: WordListViewModel
    var addWordViewController: AddWordViewController?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: AppConstants.WordListView.wordTableViewCellNib, bundle: nil),                                 forCellReuseIdentifier: AppConstants.WordListView.wordTableViewCellID)

        setupNavigationItem()
    }

    init(viewModel: WordListViewModel) {
        self.viewModel = viewModel
        super.init(style: .grouped)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func didFinishAddWord(_ word: NewWord) {
        print(word)
    }

}
