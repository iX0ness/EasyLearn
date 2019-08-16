//
//  ApplicationError.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 15/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

enum ApplicationError: Error {
    case noImageFound

}

extension ApplicationError {
    public var errorDescription: String? {
        switch self {
        case .noImageFound:
            return NSLocalizedString("Image not found", comment: "Probably image has been not saved before app instalation")

        }
    }
}
