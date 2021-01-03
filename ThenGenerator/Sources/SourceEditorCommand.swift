//
//  SourceEditorCommand.swift
//  ThenGenerator
//
//  Created by Kanz on 2021/01/03.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    private struct Const {
        static let domain: String = "ThenGenerator"
    }
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        let textBuffer = invocation.buffer
        let lines = textBuffer.lines
        let selections = textBuffer.selections
        
        // extract
        guard let selection = selections.firstObject as? XCSourceTextRange,
            let _lines = Array(lines) as? [String] else {
            completionHandler(NSError(domain: Const.domain, code: 401, userInfo: ["reason": "text is not selected"]))
            return
        }

        let startLine = selection.start.line
        // when multiple lines are selected, selection.end.line may point to the next line
        let endLine = (selection.end.column == 0 && (selection.start.line != selection.end.line))
            ? selection.end.line - 1
            : selection.end.line
        let selectedLines = Array(_lines[startLine...endLine])
        
        // create variable
        let stringArray = ViewInitGenerator.shared.generateStringsArray(selectedLines: selectedLines)
        guard stringArray.isEmpty == false else {
            completionHandler(NSError(domain: Const.domain, code: 402, userInfo: ["reason": "selected lines are not converted"]))
            return
        }

        // remove lines
        for (i, line) in (startLine...endLine).enumerated() {
            lines.remove(lines[line - i])
        }

        // replace
        lines.insert(stringArray.joined(), at: startLine)
        
        completionHandler(nil)
    }
}
