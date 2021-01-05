//
//  UINavigationBarModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UINavigationBarModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UINavigationBarKeys.delegate.key, defaultValue: true)
    var delegate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UINavigationBarKeys.setItems.key, defaultValue: true)
    var setItems
}

extension UINavigationBarModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UINavigationBarDelegate?#>")
        }
        if self.setItems == true {
            strings.append("\(indentString)$0.setItems(<#items: [UINavigationItem]?#>, animated: <#T##Bool#>)")
        }
        
        return strings
    }
}
