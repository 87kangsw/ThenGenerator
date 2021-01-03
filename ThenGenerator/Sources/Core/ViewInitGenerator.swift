//
//  ViewInitGenerator.swift
//  ThenGeneratorCore
//
//  Created by Kanz on 2021/01/01.
//

import Foundation

public class ViewInitGenerator {
    
    public static let shared = ViewInitGenerator()
    
    init() {
        //CoreDataManager.shared        
    }
    
    // MARK: - Generate then Strings
    public func generateStringsArray(selectedLines: [String]) -> [String] {
        var stringArray: [String] = []
        
        for selectedLine in selectedLines {
            guard let (startPosition, variableName) = variableStartPositionAndName(lineStr: selectedLine) else {
                return []
            }
            
            let initText = generate(startPosition: startPosition, variableName: variableName)
            stringArray.append(initText)
        }
        
        return stringArray
    }
}

extension ViewInitGenerator {
    
    func variableStartPositionAndName(lineStr: String) -> (Int, String)? {
        guard let regex = try? NSRegularExpression(pattern: "^(\\s*)(\\S+)"),
            let matched = regex.firstMatch(in: lineStr, range: NSRange(location: 0, length: lineStr.count)),
            matched.numberOfRanges == 3 else { return nil }

        let nsLineStr = (lineStr as NSString)
        let spaceStr = nsLineStr.substring(with: matched.range(at: 1))
        let variableName = nsLineStr.substring(with: matched.range(at: 2))

        return(spaceStr.count, variableName)
    }
    
    func generate(startPosition: Int, variableName: String) -> String {
        let components = UIComponents(variableName: variableName)
        let space = String(repeating: " ", count: startPosition)
        
        let commonModel = CommonModel()
        let accessModifier = commonModel.accessModifier
        let indent = commonModel.indent
        let indentString = String(repeating: " ", count: indent)
        let translatesAutoresizingMaskIntoConstraints = commonModel.translatesAutoresizingMaskIntoConstraints
        
        guard let thenDataModel = components.getThenDataModel() else { return "" }
        let textArray = thenDataModel.thenStringArray(indent: indent)
        
        /*
          private let nameLabel = UILabel().then {
              $0.font = .systemFont(ofSize: 14.0)
              $0.textColor = .title
          }
         */
        var initClosureTextArray = [
            "\(accessModifier.beginningOfVariable)let \(variableName) = \(components.fullName)().then {",
            // insert initArray position
            "\(indentString)$0.translatesAutoresizingMaskIntoConstraints = \(translatesAutoresizingMaskIntoConstraints.toString())",
            "}\n"
        ]
        
        textArray.forEach { initClosureTextArray.insert($0, at: 1) }
        
        // add space and new line
        let initClosureText = initClosureTextArray
            .map { "\(space)\($0)\n" }
            .joined()
        return initClosureText
    }
}
