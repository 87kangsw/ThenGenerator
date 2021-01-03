//
//  UserDefaultsWrapper.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import Foundation

@propertyWrapper struct UserDefaultsWrapper<T> {
    let key: String
    let defaultValue: T

    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
            return UserDefaults.group.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.group.set(newValue, forKey: key)
        }
    }
}
