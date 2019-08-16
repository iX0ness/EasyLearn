//
//  MenuViewController.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 29/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit
// KGColdCoffee
class MenuViewController: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!

    var viewModel: MenuViewModel = MenuViewModel()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMenuItems()
        setupCollectionView()
        setupCollectionViewUI()

        let image = DocumentsManager.shared.getImage(imageName: ItemName.contact)
        print(image?.size)

        

    }



}
