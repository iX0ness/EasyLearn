//
//  DocumentsDirectoryManager.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 12/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

enum ItemName: String {
    case learning = "Learning"
    case exam = "Exam"
    case library = "Library"
    case contact = "Contact"
    case fruits = "Fruits"
    case vegetables = "Vegetables"
    case apple = "Apple"
    case melon = "Melon"
    case potato = "Potato"
    case tomato = "Tomato"


    static let menuItems = [learning, exam, library, contact]
    static let categoriesAndWords = [fruits, vegetables,
                           apple, melon,
                           potato, tomato]
}



protocol GetPath {
    func getDocumentsURL() -> URL
    func getFullPath(to image: ItemName) -> URL
    func getFullPath(to image: String) -> URL
}

extension GetPath {

    func getDocumentsURL() -> URL {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsURL
    }

    func getFullPath(to image: ItemName) -> URL {
        return getDocumentsURL().appendingPathComponent(image.rawValue)
    }

    func getFullPath(to image: String) -> URL {
        return getDocumentsURL().appendingPathComponent(image)
    }

}

protocol ImageManipulator: GetPath {
    func saveImage(imageName: ItemName) -> Void
    func getImage(imageName: ItemName) -> UIImage?
    func getImage(imageName: String) -> UIImage?

}

extension ImageManipulator {
    func saveImage(imageName: ItemName) {
        do {
            let fileURL = getFullPath(to: imageName)
            guard !FileManager.default.fileExists(atPath: fileURL.absoluteString) else {
                return
            }
            let image = UIImage(named: imageName.rawValue)
            guard let data = image?.pngData() else {return}
            try data.write(to: fileURL)
            print(fileURL)
            
        } catch {
            print(error.localizedDescription)
        }
    }

    func getImage(imageName: ItemName) -> UIImage? {
        do {
            let fileURL = getFullPath(to: imageName)
            guard FileManager.default.fileExists(atPath: fileURL.path) else {
                return UIImage(named: "info.png")!
            }
            let file = try Data(contentsOf: fileURL)
            return UIImage(data: file)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }

    func getImage(imageName: String) -> UIImage? {
        do {
            let fileURL = getFullPath(to: imageName)
            guard FileManager.default.fileExists(atPath: fileURL.path) else {
                return UIImage(named: "info.png")!
            }
            let file = try Data(contentsOf: fileURL)
            return UIImage(data: file)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }



    func storeItemsImages() {
        ItemName.menuItems.forEach { (itemName) in
            saveImage(imageName: itemName)
        }
        ItemName.categoriesAndWords.forEach { (itemName) in
            saveImage(imageName: itemName)
        }
    }
}

class DocumentsManager: ImageManipulator {
    static let shared = DocumentsManager()

}

