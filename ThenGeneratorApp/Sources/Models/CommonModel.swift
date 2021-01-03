//
//  CommonModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/04.
//

import Foundation

public struct CommonModel {
    @UserDefaultsWrapper(UserDefaultsKeys.CommonKeys.translatesAutoresizingMaskIntoConstraints.rawValue, defaultValue: false)
    var translatesAutoresizingMaskIntoConstraints: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.CommonKeys.accessModifier.rawValue, defaultValue: "private")
    var accessModifierRaw: String
    
    var accessModifier: AccessModifier {
        AccessModifier(rawValue: accessModifierRaw) ?? .private
    }
    
    @UserDefaultsWrapper(UserDefaultsKeys.CommonKeys.indent.rawValue, defaultValue: 4)
    var indent: Int
}
