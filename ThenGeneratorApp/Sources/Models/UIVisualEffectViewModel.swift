//
//  UIVisualEffectViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UIVisualEffectViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIVisualEffectViewKeys.effect.rawValue, defaultValue: true)
    var effect: Bool
}

extension UIVisualEffectViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.effect == true {
            strings.append("\(indentString)$0.effect = <#UIVisualEffect?#>")
        }
        
        return strings
    }
}
