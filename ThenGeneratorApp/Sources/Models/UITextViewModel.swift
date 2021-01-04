//
//  UITextViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UITextViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UITextViewKeys.text.key, defaultValue: false)
    var text: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextViewKeys.textColor.key, defaultValue: true)
    var textColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextViewKeys.font.key, defaultValue: true)
    var font: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextViewKeys.textAlignment.key, defaultValue: false)
    var textAlignment: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextViewKeys.isEditable.key, defaultValue: false)
    var isEditable: Bool
}

extension UITextViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.text == true {
            strings.append("\(indentString)$0.text = <#String#>")
        }
        if self.textColor == true {
            strings.append("\(indentString)$0.textColor = <#UIColor#>")
        }
        if self.font == true {
            strings.append("\(indentString)$0.font = <#UIFont#>")
        }
        if self.textAlignment == true {
            strings.append("\(indentString)$0.textAlignment = <#NSTextAlignment#>")
        }
        if self.isEditable == true {
            strings.append("\(indentString)$0.isEditable = <#Bool#>")
        }
        
        return strings
    }
}
