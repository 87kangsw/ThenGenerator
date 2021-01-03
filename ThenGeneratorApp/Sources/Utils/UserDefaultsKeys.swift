//
//  UserDefaultsKeys.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import Foundation

public enum UserDefaultsKeys {
    
    // MARK: Common
    public enum CommonKeys: String {
        case translatesAutoresizingMaskIntoConstraints
        case accessModifier
        case indent
    }
}

// MARK: - UILabel
extension UserDefaultsKeys {
    public enum UILabelKeys: String {
        case text
        case textColor
        case font
        case adjustsFontSizeToFitWidth
        case attributedText
        case lineBreakMode
        case numberOfLines
        case textAlignment
    }
}
