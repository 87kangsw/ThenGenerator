//
//  NoneModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/06.
//

import Foundation

public struct NoneModel {
    
}

extension NoneModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        return []
    }
}
