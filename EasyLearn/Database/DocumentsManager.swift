//
//  DocumentsManager.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

enum AppDirectories: String {
    case Documents = "Documents"
}

enum FileNames: String {
    case learning = "learning"
    case test = "test"
    case contact = "contact"
    case database = "database"
}

protocol AppDirectoryNames {
    func documentsDirectoryURL() -> URL
    func getURL(for directory: AppDirectories) -> URL
    func buildFullPath(forFileName name: String, inDirectory directory: AppDirectories) -> URL

}

protocol AccessToFile {
    func exist(file at: URL) -> Bool
}

protocol AppFileManipulation : AppDirectoryNames {
    func writeFile(fileName: FileNames, at path: URL)
    func readFile(fileName: FileNames, at path: URL)
}

extension AppDirectoryNames {

    func documentsDirectoryURL() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    func getURL(for directory: AppDirectories) -> URL {
        switch directory
        {
        case .Documents:
            return documentsDirectoryURL()

        }
    }

    func buildFullPath(forFileName name: FileNames, inDirectory directory: AppDirectories) -> URL {
        return getURL(for: directory).appendingPathComponent(name.rawValue)
    }

}

extension AccessToFile {
    func exist(file at: URL) -> Bool {
        if FileManager.default.fileExists(atPath: at.path) {
            return true
        }
        return false
    }
}
