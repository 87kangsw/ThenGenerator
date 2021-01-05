//
//  UIViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct UIViewModel {
    
}

extension UIViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        strings.append("\(indentString)$0.backgroundColor = <#UIColor#>")
        
        return strings
    }
}
