//
//  UISwitchModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UISwitchModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.isOn.key, defaultValue: true)
    var isOn: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.preferredStyle.key, defaultValue: false)
    var preferredStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.style.key, defaultValue: false)
    var style: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.title.key, defaultValue: false)
    var title: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.onTintColor.key, defaultValue: true)
    var onTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISwitchKeys.thumbTintColor.key, defaultValue: true)
    var thumbTintColor: Bool
}

extension UISwitchModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.isOn == true {
            strings.append("\(indentString)$0.isOn = <#Bool#>")
        }
        if self.preferredStyle == true {
            strings.append("\(indentString)$0.preferredStyle = <#UISwitch.Style#>")
        }
        if self.style == true {
            strings.append("\(indentString)$0.style = <#UISwitch.Style#>")
        }
        if self.title == true {
            strings.append("\(indentString)$0.title = <#String?#>")
        }
        if self.onTintColor == true {
            strings.append("\(indentString)$0.onTintColor = <#UIColor?#>")
        }
        if self.thumbTintColor == true {
            strings.append("\(indentString)$0.thumbTintColor = <#UIColor?#>")
        }
        
        return strings
    }
}
