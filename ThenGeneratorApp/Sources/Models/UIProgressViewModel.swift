//
//  UIProgressViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UIProgressViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIProgressViewKeys.progressViewStyle.key, defaultValue: false)
    var progressViewStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIProgressViewKeys.progressTintColor.key, defaultValue: true)
    var progressTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIProgressViewKeys.progressImage.key, defaultValue: false)
    var progressImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIProgressViewKeys.trackTintColor.key, defaultValue: true)
    var trackTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIProgressViewKeys.trackImage.key, defaultValue: false)
    var trackImage: Bool
}

extension UIProgressViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.progressViewStyle == true {
            strings.append("\(indentString)$0.progressViewStyle = <#UIProgressView.Style#>")
        }
        if self.progressTintColor == true {
            strings.append("\(indentString)$0.progressTintColor = <#UIColor?#>")
        }
        if self.progressImage == true {
            strings.append("\(indentString)$0.progressImage = <#UIImage?#>")
        }
        if self.trackTintColor == true {
            strings.append("\(indentString)$0.trackTintColor = <#UIColor?#>")
        }
        if self.trackImage == true {
            strings.append("\(indentString)$0.trackImage = <#UIImage?#>")
        }

        return strings
    }
}
