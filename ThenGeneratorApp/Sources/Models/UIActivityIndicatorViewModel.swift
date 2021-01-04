//
//  UIActivityIndicatorViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UIActivityIndicatorViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIActivityIndicatorViewKeys.hidesWhenStopped.key, defaultValue: true)
    var hidesWhenStopped: Bool
    @UserDefaultsWrapper(UserDefaultsKeys.UIActivityIndicatorViewKeys.style.key, defaultValue: true)
    var style: Bool
    @UserDefaultsWrapper(UserDefaultsKeys.UIActivityIndicatorViewKeys.color.key, defaultValue: true)
    var color: Bool
}

extension UIActivityIndicatorViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.hidesWhenStopped == true {
            strings.append("\(indentString)$0.hidesWhenStopped = <#Bool#>")
        }
        if self.style == true {
            strings.append("\(indentString)$0.style = <#UIActivityIndicatorView.Style#>")
        }
        if self.color == true {
            strings.append("\(indentString)$0.color = <#UIColor!#>")
        }
        
        return strings
    }
}
