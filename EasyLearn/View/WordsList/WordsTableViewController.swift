//
//  WordsTableViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    weak var coordinator: WordsLibraryCoordinator?
    var viewModel: WordListViewModel
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: AppConstants.WordListView.wordTableViewCellNib, bundle: nil), forCellReuseIdentifier: AppConstants.WordListView.wordTableViewCellID)
        
    }

    init(viewModel: WordListViewModel) {
        self.viewModel = viewModel
        super.init(style: .grouped)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
