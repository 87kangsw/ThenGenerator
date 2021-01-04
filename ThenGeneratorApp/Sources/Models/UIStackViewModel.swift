//
//  UIStackViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UIStackViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIStackViewKeys.axis.key, defaultValue: true)
    var axis: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStackViewKeys.spacing.key, defaultValue: true)
    var spacing: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStackViewKeys.alignment.key, defaultValue: false)
    var alignment: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStackViewKeys.distribution.key, defaultValue: true)
    var distribution: Bool
}

extension UIStackViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.axis == true {
            strings.append("\(indentString)$0.axis = <#NSLayoutConstraint.Axis#>")
        }
        if self.spacing == true {
            strings.append("\(indentString)$0.spacing = <#CGFloat#>")
        }
        if self.alignment == true {
            strings.append("\(indentString)$0.alignment = <#UIStackView.Alignment#>")
        }
        if self.distribution == true {
            strings.append("\(indentString)$0.distribution = <#UIStackView.Distribution#>")
        }
        
        return strings
    }
}
