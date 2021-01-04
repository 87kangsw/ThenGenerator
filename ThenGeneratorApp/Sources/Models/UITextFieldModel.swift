//
//  UITextFieldModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UITextFieldModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.font.key, defaultValue: true)
    var font: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.text.key, defaultValue: false)
    var text: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.textColor.key, defaultValue: true)
    var textColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.textAlignment.key, defaultValue: false)
    var textAlignment: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.placeholder.key, defaultValue: false)
    var placeholder: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.attributedPlaceholder.key, defaultValue: false)
    var attributedPlaceholder: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITextFieldKeys.borderStyle.key, defaultValue: false)
    var borderStyle: Bool
}

extension UITextFieldModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.font == true {
            strings.append("\(indentString)$0.font = <#..#>")
        }
        if self.text == true {
            strings.append("\(indentString)$0.text = <#..#>")
        }
        if self.textColor == true {
            strings.append("\(indentString)$0.textColor = <#..#>")
        }
        if self.textAlignment == true {
            strings.append("\(indentString)$0.textAlignment = <#..#>")
        }
        if self.placeholder == true {
            strings.append("\(indentString)$0.placeholder = <#..#>")
        }
        if self.attributedPlaceholder == true {
            strings.append("\(indentString)$0.attributedPlaceholder = <#..#>")
        }
        if self.borderStyle == true {
            strings.append("\(indentString)$0.borderStyle = <#..#>")
        }
        
        return strings
    }
}
