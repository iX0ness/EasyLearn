//
//  LibraryViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 18/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryTableView: UITableView!

    weak var coordinator: WordsLibraryCoordinator?
    var viewModel: CategoryListViewModel

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchCategories()
        libraryTableView.delegate = self
        libraryTableView.dataSource = self
        libraryTableView.register(UINib(nibName: "CategoryTableViewCell",
                                        bundle: nil),
                                        forCellReuseIdentifier: AppConstants.LibraryView.categoryTableViewCellID)
    }

    init(viewModel: CategoryListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
