//
//  DocumentsDirectoryManager.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 12/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

enum ImageName: String{
    case contact = "contact.png"
    case exam = "exam.png"
    case library = "library.png"
    case reading = "reading.png"
}

protocol GetPath {
    func getDocumentsURL() -> URL
    func getFullPath(to image: ImageName) -> URL
}

extension GetPath {

    func getDocumentsURL() -> URL {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsURL
    }

    func getFullPath(to image: ImageName) -> URL {
        return getDocumentsURL().appendingPathComponent(image.rawValue)
    }
}

protocol ImageManipulator: GetPath {
    func saveImage(imageName: ImageName) -> Void
    func getImage(imageName: ImageName) -> UIImage?
}

extension ImageManipulator {
    func saveImage(imageName: ImageName) {
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

    func getImage(imageName: ImageName) -> UIImage? {
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
}

class DocumentsManager: ImageManipulator {
    static let shared = DocumentsManager()

}

