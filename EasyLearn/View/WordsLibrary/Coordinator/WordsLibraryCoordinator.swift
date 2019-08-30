//
//  WordsLibraryCoordinator.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 22/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

class WordsLibraryCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let wordsLibraryVC = LibraryViewController(viewModel: makeViewModel())
        wordsLibraryVC.coordinator = self
        navigationController.pushViewController(wordsLibraryVC, animated: true)
    }

    private func makeViewModel() -> CategoryListViewModel {
        return CategoryListViewModel()
    }


}
