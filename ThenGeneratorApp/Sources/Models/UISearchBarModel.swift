//
//  UISearchBarModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UISearchBarModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.delegate.key, defaultValue: true)
    var delegate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.placeholder.key, defaultValue: true)
    var placeholder: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.prompt.key, defaultValue: false)
    var prompt: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.text.key, defaultValue: false)
    var text: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.barTintColor.key, defaultValue: false)
    var barTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.searchBarStyle.key, defaultValue: true)
    var searchBarStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.tintColor.key, defaultValue: true)
    var tintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.isTranslucent.key, defaultValue: false)
    var isTranslucent: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.barStyle.key, defaultValue: true)
    var barStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.showsCancelButton.key, defaultValue: true)
    var showsCancelButton: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.showsBookmarkButton.key, defaultValue: false)
    var showsBookmarkButton: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.showsSearchResultsButton.key, defaultValue: false)
    var showsSearchResultsButton: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.showsScopeBar.key, defaultValue: false)
    var showsScopeBar: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.backgroundImage.key, defaultValue: false)
    var backgroundImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISearchBarKeys.scopeBarBackgroundImage.key, defaultValue: false)
    var scopeBarBackgroundImage: Bool
}

extension UISearchBarModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UISearchBarDelegate?#>")
        }
        if self.placeholder == true {
            strings.append("\(indentString)$0.placeholder = <#String?#>")
        }
        if self.prompt == true {
            strings.append("\(indentString)$0.prompt = <#String?#>")
        }
        if self.text == true {
            strings.append("\(indentString)$0.text = <#String?#>")
        }
        if self.barTintColor == true {
            strings.append("\(indentString)$0.barTintColor = <#UIColor?#>")
        }
        if self.searchBarStyle == true {
            strings.append("\(indentString)$0.searchBarStyle = <#UISearchBar.Style#>")
        }
        if self.tintColor == true {
            strings.append("\(indentString)$0.tintColor = <#UIColor!#>")
        }
        if self.isTranslucent == true {
            strings.append("\(indentString)$0.isTranslucent = <#Bool#>")
        }
        if self.barStyle == true {
            strings.append("\(indentString)$0.barStyle = <#UIBarStyle#>")
        }
        if self.showsCancelButton == true {
            strings.append("\(indentString)$0.showsCancelButton = <#Bool#>")
        }
        if self.showsBookmarkButton == true {
            strings.append("\(indentString)$0.showsBookmarkButton = <#Bool#>")
        }
        if self.showsSearchResultsButton == true {
            strings.append("\(indentString)$0.showsSearchResultsButton = <#Bool#>")
        }
        if self.showsScopeBar == true {
            strings.append("\(indentString)$0.showsScopeBar = <#Bool#>")
        }
        if self.backgroundImage == true {
            strings.append("\(indentString)$0.backgroundImage = <#UIImage?#>")
        }
        if self.scopeBarBackgroundImage == true {
            strings.append("\(indentString)$0.scopeBarBackgroundImage = <#UIImage?#>")
        }
        
        return strings
    }
}
