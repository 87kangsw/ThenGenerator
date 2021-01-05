//
//  UISegmentedControlModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UISegmentedControlModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setImage.key, defaultValue: false)
    var setImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setTitle.key, defaultValue: false)
    var setTitle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setEnabled.key, defaultValue: false)
    var setEnabled: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setBackgroundImage.key, defaultValue: false)
    var setBackgroundImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setDividerImage.key, defaultValue: false)
    var setDividerImage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UISegmentedControlKeys.setTitleTextAttributes.key, defaultValue: false)
    var setTitleTextAttributes: Bool
}

extension UISegmentedControlModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.setImage == true {
            strings.append("\(indentString)$0.setImage(<#T##image: UIImage?##UIImage?#>, forSegmentAt: <#T##Int#>)")
        }
        if self.setTitle == true {
            strings.append("\(indentString)$0.setTitle(<#T##title: String?##String?#>, forSegmentAt: <#T##Int#>)")
        }
        if self.setEnabled == true {
            strings.append("\(indentString)$0.setEnabled(<#T##enabled: Bool##Bool#>, forSegmentAt: <#T##Int#>)")
        }
        if self.setBackgroundImage == true {
            strings.append("\(indentString)$0.setBackgroundImage(<#T##backgroundImage: UIImage?##UIImage?#>, for: <#T##UIControl.State#>, barMetrics: <#T##UIBarMetrics#>)")
        }
        if self.setDividerImage == true {
            strings.append("\(indentString)$0.setDividerImage(<#T##dividerImage: UIImage?##UIImage?#>, forLeftSegmentState: <#T##UIControl.State#>, rightSegmentState: <#T##UIControl.State#>, barMetrics: <#T##UIBarMetrics#>)")
        }
        if self.setTitleTextAttributes == true {
            strings.append("\(indentString)$0.setTitleTextAttributes(<#T##attributes: [NSAttributedString.Key : Any]?##[NSAttributedString.Key : Any]?#>, for: <#T##UIControl.State#>)")
        }
        
        return strings
    }
}
