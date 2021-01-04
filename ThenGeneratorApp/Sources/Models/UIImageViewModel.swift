//
//  UIImageViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UIImageViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIImageViewKeys.image.key, defaultValue: true)
    var image: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIImageViewKeys.contentMode.key, defaultValue: true)
    var contentMode: Bool
}

extension UIImageViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.image == true {
            strings.append("\(indentString)$0.image = <#UIImage?#>")
        }
        if self.contentMode == true {
            strings.append("\(indentString)$0.contentMode = <#UIView.ContentMode#>")
        }
        
        return strings
    }
}
