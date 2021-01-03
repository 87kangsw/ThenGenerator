//
//  SourceEditorExtension.swift
//  ThenGenerator
//
//  Created by Kanz on 2021/01/03.
//

import Foundation
import XcodeKit
import OSLog

class SourceEditorExtension: NSObject, XCSourceEditorExtension {
    
    func extensionDidFinishLaunching() {
        os_log("extensionDidFinishLaunching", type: .debug)
    }
}
