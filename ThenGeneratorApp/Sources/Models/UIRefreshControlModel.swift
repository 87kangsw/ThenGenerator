//
//  UIRefreshControlModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UIRefreshControlModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIRefreshControlKeys.tintColor.key, defaultValue: true)
    var tintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIRefreshControlKeys.attributedTitle.key, defaultValue: true)
    var attributedTitle: Bool
}

extension UIRefreshControlModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.tintColor == true {
            strings.append("\(indentString)$0.tintColor = <#UIColor!#>")
        }
        if self.attributedTitle == true {
            strings.append("\(indentString)$0.attributedTitle = <#NSAttributedString?#>")
        }
        
        return strings
    }
}
