//
//  AccessModifier.swift
//  ThenGeneratorCore
//
//  Created by Kanz on 2021/01/01.
//

import Foundation

public enum AccessModifier: String, CaseIterable {
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
}

extension AccessModifier {
    var beginningOfVariable: String {
        switch self {
        case .internal:
            return ""
        case .private, .fileprivate, .public:
            return self.rawValue + " "
        }
    }
}
