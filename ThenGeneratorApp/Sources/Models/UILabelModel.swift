//
//  UILabelModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import Foundation

public struct UILabelModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.text.key, defaultValue: false)
    var text: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.textColor.key, defaultValue: false)
    var textColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.font.key, defaultValue: false)
    var font: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.adjustsFontSizeToFitWidth.key, defaultValue: false)
    var adjustsFontSizeToFitWidth: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.attributedText.key, defaultValue: false)
    var attributedText: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.lineBreakMode.key, defaultValue: false)
    var lineBreakMode: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.numberOfLines.key, defaultValue: false)
    var numberOfLines: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UILabelKeys.textAlignment.key, defaultValue: false)
    var textAlignment: Bool
}

extension UILabelModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.adjustsFontSizeToFitWidth == true {
            strings.append("\(indentString)$0.adjustsFontSizeToFitWidth = <#..#>")
        }
        if self.attributedText == true {
            strings.append("\(indentString)$0.attributedText = <#..#>")
        }
        if self.font == true {
            strings.append("\(indentString)$0.font = <#..#>")
        }
        if self.lineBreakMode == true {
            strings.append("\(indentString)$0.lineBreakMode = <#..#>")
        }
        if self.numberOfLines == true {
            strings.append("\(indentString)$0.numberOfLines = <#..#>")
        }
        if self.text == true {
            strings.append("\(indentString)$0.text = <#..#>")
        }
        if self.textAlignment == true {
            strings.append("\(indentString)$0.textAlignment = <#..#>")
        }
        if self.textColor == true {
            strings.append("\(indentString)$0.textColor = <#..#>")
        }
        
        return strings
    }
}
