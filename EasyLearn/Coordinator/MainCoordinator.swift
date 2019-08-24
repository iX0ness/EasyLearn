//
//  MainCoordinator.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 19/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators = [Coordinator]()

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func childDidFinish(child: Coordinator?) {
        for (index, childCoordinator) in childCoordinators.enumerated() {
            if child === childCoordinator {
                childCoordinators.remove(at: index)
            }
        }
    }

    func start() {
        navigationController.delegate = self
        let menuViewController = MenuViewController(viewModel: makeMenuViewModel())
        menuViewController.coordinator = self
        navigationController.pushViewController(menuViewController, animated: true)
    }

    func library() {
        let libraryCoordinator = WordsLibraryCoordinator(navigationController: navigationController)
        childCoordinators.append(libraryCoordinator)
        libraryCoordinator.parentCoordinator = self
        libraryCoordinator.start()
    }

    func makeMenuViewModel() -> MenuViewModel {
        return MenuViewModel()
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {

        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }

        if navigationController.viewControllers.contains(fromViewController) {
            return
        }

        if let libraryViewController = viewController as? LibraryViewController {
            childDidFinish(child: libraryViewController.coordinator)
        }

        
    }


}
