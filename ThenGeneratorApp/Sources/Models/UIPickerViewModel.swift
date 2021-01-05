//
//  UIPickerViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UIPickerViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIPickerViewKeys.dataSource.key, defaultValue: true)
    var dataSource: Bool
    @UserDefaultsWrapper(UserDefaultsKeys.UIPickerViewKeys.delegate.key, defaultValue: true)
    var delegate: Bool
}

extension UIPickerViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.dataSource == true {
            strings.append("\(indentString)$0.dataSource = <#UIPickerViewDataSource?#>")
        }
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UIPickerViewDelegate?#>")
        }
        
        return strings
    }
}
