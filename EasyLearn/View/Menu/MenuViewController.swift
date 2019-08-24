//
//  MenuViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 29/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit
import CoreData

class MenuViewController: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!

    weak var coordinator: MainCoordinator?
    var viewModel: MenuViewModel
    
    init(viewModel: MenuViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "MenuViewController", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMenuItems()
        setupCollectionView()
        setupCollectionViewUI()
    }



}
