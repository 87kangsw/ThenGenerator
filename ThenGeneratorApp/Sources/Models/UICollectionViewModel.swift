//
//  UICollectionViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct UICollectionViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.register.key, defaultValue: true)
    var register: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.backgroundColor.key, defaultValue: true)
    var backgroundColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.dataSource.key, defaultValue: true)
    var dataSource: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.delegate.key, defaultValue: true)
    var delegate: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.showsVerticalScrollIndicator.key, defaultValue: false)
    var showsVerticalScrollIndicator: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UICollectionViewKeys.showsHorizontalScrollIndicator.key, defaultValue: false)
    var showsHorizontalScrollIndicator: Bool
}

extension UICollectionViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.register == true {
            strings.append("\(indentString)$0.register(<#T##nib: UINib?##UINib?#>, forCellWithReuseIdentifier: <#T##String#>)")
        }
        if self.backgroundColor == true {
            strings.append("\(indentString)$0.backgroundColor = <#UIColor?#>")
        }
        if self.dataSource == true {
            strings.append("\(indentString)$0.dataSource = <#UICollectionViewDataSource?#>")
        }
        if self.delegate == true {
            strings.append("\(indentString)$0.delegate = <#UICollectionViewDelegate?#>")
        }
        if self.showsVerticalScrollIndicator == true {
            strings.append("\(indentString)$0.showsVerticalScrollIndicator = <#Bool#>")
        }
        if self.showsHorizontalScrollIndicator == true {
            strings.append("\(indentString)$0.showsHorizontalScrollIndicator = <#Bool#>")
        }
        
        return strings
    }
}
