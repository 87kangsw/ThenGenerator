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

// MARK: - UIImageView
extension UserDefaultsKeys {
    public enum UIImageViewKeys: String {
        case image
        case contentMode
        
        var key: String {
            return "UIImageView_" + self.rawValue
        }
    }
}

// MARK: - UITextView
extension UserDefaultsKeys {
    public enum UITextViewKeys: String {
        case text
        case textColor
        case font
        case textAlignment
        case isEditable
        
        var key: String {
            return "UITextView_" + self.rawValue
        }
    }
}

// MARK: - UIScrollView
extension UserDefaultsKeys {
    public enum UIScrollViewKeys: String {
        case isScrollEnabled
        case isPagingEnabled
        case bounces
        case indicatorStyle
        case showsVerticalScrollIndicator
        case showsHorizontalScrollIndicator
        case minimumZoomScale
        case maximumZoomScale
        case zoomScale

        var key: String {
            return "UIScrollView_" + self.rawValue
        }
    }
}

// MARK: - UIPageControl
extension UserDefaultsKeys {
    public enum UIPageControlKeys: String {
        case currentPage
        case numberOfPages
        case hidesForSinglePage
        case pageIndicatorTintColor
        case currentPageIndicatorTintColor
        case backgroundStyle
        
        var key: String {
            return "UIPageControl_" + self.rawValue
        }
    }
}

// MARK: - UIRefreshControl
extension UserDefaultsKeys {
    public enum UIRefreshControlKeys: String {
        case tintColor
        case attributedTitle
   
        var key: String {
            return "UIRefreshControl_" + self.rawValue
        }
    }
}

// MARK: - UISwitch
extension UserDefaultsKeys {
    public enum UISwitchKeys: String {
        case isOn
        case preferredStyle // iOS14
        case style // iOS14
        case title // iOS14
        case onTintColor
        case thumbTintColor

        var key: String {
            return "UISwitch_" + self.rawValue
        }
    }
}

// MARK: - UISlider
extension UserDefaultsKeys {
    public enum UISliderKeys: String {
        case value
        case minimumValue
        case maximumValue
        case minimumValueImage
        case maximumValueImage
        case minimumTrackTintColor
        case currentMinimumTrackImage
        case maximumTrackTintColor
        case currentMaximumTrackImage
        case thumbTintColor
        case currentThumbImage

        var key: String {
            return "UISlider_" + self.rawValue
        }
    }
}

// MARK: - UIProgressView
extension UserDefaultsKeys {
    public enum UIProgressViewKeys: String {
        case progressViewStyle
        case progressTintColor
        case progressImage
        case trackTintColor
        case trackImage

        var key: String {
            return "UIProgressView_" + self.rawValue
        }
    }
}

// MARK: - UISearchBar
extension UserDefaultsKeys {
    public enum UISearchBarKeys: String {
        case delegate
        case placeholder
        case prompt
        case text
        case barTintColor
        case searchBarStyle
        case tintColor
        case isTranslucent
        case barStyle
        case showsCancelButton
        case showsBookmarkButton
        case showsSearchResultsButton
        case showsScopeBar
        case backgroundImage
        case scopeBarBackgroundImage

        var key: String {
            return "UISearchBar_" + self.rawValue
        }
    }
}

// MARK: - UIStepper
extension UserDefaultsKeys {
    public enum UIStepperKeys: String {
        case isContinuous
        case autorepeat
        case wraps
        case minimumValue
        case maximumValue
        case stepValue
        case value
        case setDividerImage
        case setIncrementImage
        case setDecrementImage

        var key: String {
            return "UIStepper_" + self.rawValue
        }
    }
}

// MARK: - UIDatePicker
extension UserDefaultsKeys {
    public enum UIDatePickerKeys: String {
        case calendar
        case date
        case locale
        case timeZone
        case datePickerMode
        case datePickerStyle
        case preferredDatePickerStyle
        case maximumDate
        case minimumDate
        case minuteInterval
        case countDownDuration

        var key: String {
            return "UIDatePicker_" + self.rawValue
        }
    }
}

// MARK: - UIPickerView
extension UserDefaultsKeys {
    public enum UIPickerViewKeys: String {
        case dataSource
        case delegate

        var key: String {
            return "UIPickerView_" + self.rawValue
        }
    }
}

// MARK: - UIToolbar
extension UserDefaultsKeys {
    public enum UIToolbarKeys: String {
        case delegate
        case setItems
        
        var key: String {
            return "UIToolbar_" + self.rawValue
        }
    }
}

// MARK: - UINavigationBar
extension UserDefaultsKeys {
    public enum UINavigationBarKeys: String {
        case delegate
        case setItems
        
        var key: String {
            return "UINavigationBar_" + self.rawValue
        }
    }
}
