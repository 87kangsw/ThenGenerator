//
//  UIStepperModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UIStepperModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.isContinuous.key, defaultValue: false)
    var isContinuous: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.autorepeat.key, defaultValue: false)
    var autorepeat: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.wraps.key, defaultValue: false)
    var wraps: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.minimumValue.key, defaultValue: true)
    var minimumValue: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.maximumValue.key, defaultValue: true)
    var maximumValue: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.stepValue.key, defaultValue: true)
    var stepValue: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.value.key, defaultValue: true)
    var value: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.setDividerImage.key, defaultValue: false)
    var setDividerImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.setIncrementImage.key, defaultValue: false)
    var setIncrementImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIStepperKeys.setDecrementImage.key, defaultValue: false)
    var setDecrementImage: Bool
}

extension UIStepperModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.isContinuous == true {
            strings.append("\(indentString)$0.isContinuous = <#Bool#>")
        }
        if self.autorepeat == true {
            strings.append("\(indentString)$0.autorepeat = <#Bool#>")
        }
        if self.wraps == true {
            strings.append("\(indentString)$0.wraps = <#Bool#>")
        }
        if self.minimumValue == true {
            strings.append("\(indentString)$0.minimumValue = <#Double#>")
        }
        if self.maximumValue == true {
            strings.append("\(indentString)$0.maximumValue = <#Double#>")
        }
        if self.stepValue == true {
            strings.append("\(indentString)$0.stepValue = <#Double#>")
        }
        if self.value == true {
            strings.append("\(indentString)$0.value = <#Double#>")
        }
        if self.setDividerImage == true {
            strings.append("\(indentString)$0.setDividerImage(<#T##image: UIImage?##UIImage?#>, forLeftSegmentState: <#T##UIControl.State#>, rightSegmentState: <#T##UIControl.State#>)")
        }
        if self.setIncrementImage == true {
            strings.append("\(indentString)$0.setIncrementImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)")
        }
        if self.setDecrementImage == true {
            strings.append("\(indentString)$0.setDecrementImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)")
        }
        
        return strings
    }
}
