//
//  UISliderModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UISliderModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.value.key, defaultValue: true)
    var value: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.minimumValue.key, defaultValue: true)
    var minimumValue: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.maximumValue.key, defaultValue: true)
    var maximumValue: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.minimumValueImage.key, defaultValue: false)
    var minimumValueImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.maximumValueImage.key, defaultValue: false)
    var maximumValueImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.minimumTrackTintColor.key, defaultValue: false)
    var minimumTrackTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.currentMinimumTrackImage.key, defaultValue: false)
    var currentMinimumTrackImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.maximumTrackTintColor.key, defaultValue: false)
    var maximumTrackTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.currentMaximumTrackImage.key, defaultValue: false)
    var currentMaximumTrackImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.thumbTintColor.key, defaultValue: false)
    var thumbTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISliderKeys.currentThumbImage.key, defaultValue: false)
    var currentThumbImage: Bool
}

extension UISliderModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.value == true {
            strings.append("\(indentString)$0.value = <#CGFloat#>")
        }
        if self.minimumValue == true {
            strings.append("\(indentString)$0.minimumValue = <#CGFloat#>")
        }
        if self.maximumValue == true {
            strings.append("\(indentString)$0.maximumValue = <#CGFloat#>")
        }
        if self.minimumValueImage == true {
            strings.append("\(indentString)$0.minimumValueImage = <#UIImage?#>")
        }
        if self.maximumValueImage == true {
            strings.append("\(indentString)$0.maximumValueImage = <#UIImage?#>")
        }
        if self.minimumTrackTintColor == true {
            strings.append("\(indentString)$0.minimumTrackTintColor = <#UIColor?#>")
        }
        if self.currentMinimumTrackImage == true {
            strings.append("\(indentString)$0.currentMinimumTrackImage = <#UIImage?#>")
        }
        if self.maximumTrackTintColor == true {
            strings.append("\(indentString)$0.maximumTrackTintColor = <#UIColor?#>")
        }
        if self.currentMaximumTrackImage == true {
            strings.append("\(indentString)$0.currentMaximumTrackImage = <#UIImage?#>")
        }
        if self.thumbTintColor == true {
            strings.append("\(indentString)$0.thumbTintColor = <#UIColor?#>")
        }
        if self.currentThumbImage == true {
            strings.append("\(indentString)$0.currentThumbImage = <#UIImage?#>")
        }
        
        return strings
    }
}
