//
//  UIButtonModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UIButtonModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIButtonKeys.setTitle.rawValue, defaultValue: true)
    var setTitle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIButtonKeys.setAttributedTitle.rawValue, defaultValue: false)
    var setAttributedTitle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIButtonKeys.titleLabelFont.rawValue, defaultValue: true)
    var titleLabelFont: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIButtonKeys.setTitleColor.rawValue, defaultValue: true)
    var setTitleColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIButtonKeys.setImage.rawValue, defaultValue: true)
    var setImage: Bool
}

extension UIButtonModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.setTitle == true {
            strings.append("\(indentString)$0.setTitle(<#..#>, for: <#..#>)")
        }
        if self.setAttributedTitle == true {
            strings.append("\(indentString)$0.setAttributedTitle(<#..#>, for: <#..#>)")
        }
        if self.titleLabelFont == true {
            strings.append("\(indentString)$0.titleLabel?.font = <#..#>")
        }
        if self.setTitleColor == true {
            strings.append("\(indentString)$0.setTitleColor(<#..#>, for: <#..#>)")
        }
        if self.setImage == true {
            strings.append("\(indentString)$0.setImage(<#..#>, for: <#..#>)")
        }
        
        return strings
    }
}
