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

// MARK: - UIButton
extension UserDefaultsKeys {
    public enum UIButtonKeys: String {
        case setTitle
        case setAttributedTitle
        case titleLabelFont
        case setTitleColor
        case setImage
// MARK: - UITextField
extension UserDefaultsKeys {
    public enum UITextFieldKeys: String {
        case font
        case text
        case textColor
        case textAlignment
        case placeholder
        case attributedPlaceholder
        case borderStyle
        
        var key: String {
            return "UITextField" + self.rawValue
        }
    }
}
