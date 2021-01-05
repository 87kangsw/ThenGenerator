//
//  UIDatePickerModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UIDatePickerModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.calendar.key, defaultValue: false)
    var calendar: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.date.key, defaultValue: false)
    var date: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.locale.key, defaultValue: false)
    var locale: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.timeZone.key, defaultValue: false)
    var timeZone: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.datePickerMode.key, defaultValue: true)
    var datePickerMode: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.datePickerStyle.key, defaultValue: true)
    var datePickerStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.preferredDatePickerStyle.key, defaultValue: false)
    var preferredDatePickerStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.maximumDate.key, defaultValue: true)
    var maximumDate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.minimumDate.key, defaultValue: true)
    var minimumDate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.minuteInterval.key, defaultValue: false)
    var minuteInterval: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIDatePickerKeys.countDownDuration.key, defaultValue: false)
    var countDownDuration: Bool
}

extension UIDatePickerModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.calendar == true {
            strings.append("\(indentString)$0.calendar = <#Calendar!#>")
        }
        if self.date == true {
            strings.append("\(indentString)$0.date = <#Date#>")
        }
        if self.locale == true {
            strings.append("\(indentString)$0.locale = <#Locale?#>")
        }
        if self.timeZone == true {
            strings.append("\(indentString)$0.timeZone = <#TimeZone?#>")
        }
        if self.datePickerMode == true {
            strings.append("\(indentString)$0.datePickerMode = <#UIDatePicker.Mode#>")
        }
        if self.datePickerStyle == true {
            strings.append("\(indentString)$0.datePickerStyle = <#UIDatePickerStyle#>")
        }
        if self.preferredDatePickerStyle == true {
            strings.append("\(indentString)$0.preferredDatePickerStyle = ")
        }
        if self.maximumDate == true {
            strings.append("\(indentString)$0.maximumDate = <#Date?#>")
        }
        if self.minimumDate == true {
            strings.append("\(indentString)$0.minimumDate = <#Date?#>")
        }
        if self.minuteInterval == true {
            strings.append("\(indentString)$0.minuteInterval = <#Int#>")
        }
        if self.countDownDuration == true {
            strings.append("\(indentString)$0.countDownDuration = <#TimeInterval#>")
        }
        
        return strings
    }
}
