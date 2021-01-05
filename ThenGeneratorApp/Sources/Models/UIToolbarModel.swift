//
//  UIToolbarModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UIToolbarModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIToolbarKeys.delegate.key, defaultValue: true)
    var delegate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIToolbarKeys.setItems.key, defaultValue: true)
    var setItems: Bool
}

extension UIToolbarModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UIToolbarDelegate?#>")
        }
        if self.setItems == true {
            strings.append("\(indentString)$0.setItems(<#T##items: [UIBarButtonItem]?##[UIBarButtonItem]?#>, animated: <#T##Bool#>)")
        }
        
        return strings
    }
}

