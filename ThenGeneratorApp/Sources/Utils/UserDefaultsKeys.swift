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
        
        var key: String {
            return "UILabel_" + self.rawValue
        }
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
        
        var key: String {
            return "UIButton_" + self.rawValue
        }
    }
}

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
            return "UITextField_" + self.rawValue
        }
    }
}

// MARK: - UITableView
extension UserDefaultsKeys {
    public enum UITableViewKeys: String {
        case estimatedRowHeight
        case rowHeight
        case separatorStyle
        case backgroundColor
        case separatorColor
        case register
        
        var key: String {
            return "UITableView_" + self.rawValue
        }
    }
}

// MARK: - UICollectionView
extension UserDefaultsKeys {
    public enum UICollectionViewKeys: String {
        case register
        case backgroundColor
        case dataSource
        case delegate
        case showsVerticalScrollIndicator
        case showsHorizontalScrollIndicator
        
        var key: String {
            return "UICollectionView_" + self.rawValue
        }
    }
}

// MARK: - UIStackView
extension UserDefaultsKeys {
    public enum UIStackViewKeys: String {
        case axis
        case spacing
        case alignment
        case distribution
        
        var key: String {
            return "UIStackView_" + self.rawValue
        }
    }
}

// MARK: - UIActivityIndicatorView
extension UserDefaultsKeys {
    public enum UIActivityIndicatorViewKeys: String {
        case hidesWhenStopped
        case style
        case color
        
        var key: String {
            return "UIActivityIndicatorView_" + self.rawValue
        }
    }
}

// MARK: UIImageView
extension UserDefaultsKeys {
    public enum UIImageViewKeys: String {
        case image
        case contentMode
        
        var key: String {
            return "UIImageView_" + self.rawValue
        }
    }
}
