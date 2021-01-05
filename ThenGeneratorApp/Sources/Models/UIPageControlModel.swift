//
//  UIPageControlModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UIPageControlModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.currentPage.key, defaultValue: true)
    var currentPage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.numberOfPages.key, defaultValue: true)
    var numberOfPages: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.hidesForSinglePage.key, defaultValue: false)
    var hidesForSinglePage: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.pageIndicatorTintColor.key, defaultValue: true)
    var pageIndicatorTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.currentPageIndicatorTintColor.key, defaultValue: true)
    var currentPageIndicatorTintColor: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIPageControlKeys.backgroundStyle.key, defaultValue: false)
    var backgroundStyle: Bool
}

extension UIPageControlModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.currentPage == true {
            strings.append("\(indentString)$0.currentPage = <#Int#>")
        }
        if self.numberOfPages == true {
            strings.append("\(indentString)$0.numberOfPages = <#Int#>")
        }
        if self.hidesForSinglePage == true {
            strings.append("\(indentString)$0.hidesForSinglePage = <#Bool#>")
        }
        if self.pageIndicatorTintColor == true {
            strings.append("\(indentString)$0.pageIndicatorTintColor = <#UIColor?#>")
        }
        if self.currentPageIndicatorTintColor == true {
            strings.append("\(indentString)$0.currentPageIndicatorTintColor = <#UIColor?#>")
        }
        if self.backgroundStyle == true {
            strings.append("\(indentString)$0.backgroundStyle = <#UIPageControl.BackgroundStyle#>")
        }
        
        return strings
    }
}
