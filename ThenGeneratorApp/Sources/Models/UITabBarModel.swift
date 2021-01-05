//
//  UITabBarModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UITabBarModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UITabBarKeys.delegate.key, defaultValue: true)
    var delegate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITabBarKeys.setItems.key, defaultValue: true)
    var setItems
}

extension UITabBarModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UITabBarDelegate?#>")
        }
        if self.setItems == true {
            strings.append("\(indentString)$0.setItems(<#items: [UITabBarItem]?#>, animated: <#T##Bool#>)")
        }
        
        return strings
    }
}
