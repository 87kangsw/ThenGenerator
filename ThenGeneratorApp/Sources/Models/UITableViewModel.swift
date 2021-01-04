//
//  UITableViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UITableViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.estimatedRowHeight.key, defaultValue: true)
    var estimatedRowHeight: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.rowHeight.key, defaultValue: true)
    var rowHeight: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.separatorStyle.key, defaultValue: false)
    var separatorStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.backgroundColor.key, defaultValue: true)
    var backgroundColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.separatorColor.key, defaultValue: false)
    var separatorColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UITableViewKeys.register.key, defaultValue: true)
    var register: Bool
}

extension UITableViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.estimatedRowHeight == true {
            strings.append("\(indentString)$0.estimatedRowHeight = <#CGFloat#>")
        }
        if self.rowHeight == true {
            strings.append("\(indentString)$0.rowHeight = <#CGFloat#>")
        }
        if self.separatorStyle == true {
            strings.append("\(indentString)$0.separatorStyle = <#UITableViewCell.SeparatorStyle#>")
        }
        if self.backgroundColor == true {
            strings.append("\(indentString)$0.backgroundColor = <#UIColor?#>")
        }
        if self.separatorColor == true {
            strings.append("\(indentString)$0.separatorColor = <#UIColor?#>")
        }
        if self.register == true {
            strings.append("\(indentString)$0.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)")
        }
        
        return strings
    }
}
