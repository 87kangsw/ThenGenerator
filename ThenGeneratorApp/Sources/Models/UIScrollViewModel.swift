//
//  UIScrollViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/05.
//

import Foundation

public struct UIScrollViewModel {
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.isScrollEnabled.key, defaultValue: true)
    var isScrollEnabled: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.isPagingEnabled.key, defaultValue: false)
    var isPagingEnabled: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.bounces.key, defaultValue: false)
    var bounces: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.indicatorStyle.key, defaultValue: false)
    var indicatorStyle: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.showsVerticalScrollIndicator.key, defaultValue: false)
    var showsVerticalScrollIndicator: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.showsHorizontalScrollIndicator.key, defaultValue: false)
    var showsHorizontalScrollIndicator: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.minimumZoomScale.key, defaultValue: false)
    var minimumZoomScale: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.maximumZoomScale.key, defaultValue: false)
    var maximumZoomScale: Bool
    
    @UserDefaultsWrapper(UserDefaultsKeys.UIScrollViewKeys.zoomScale.key, defaultValue: false)
    var zoomScale: Bool
}

extension UIScrollViewModel: ThenModelProtocol {
    public func thenStringArray(indent: Int) -> [String] {
        let indentString = String(repeating: " ", count: indent)
        var strings: [String] = []
        
        if self.isScrollEnabled == true {
            strings.append("\(indentString)$0.isScrollEnabled = <#Bool#>")
        }
        if self.isPagingEnabled == true {
            strings.append("\(indentString)$0.isPagingEnabled = <#Bool#>")
        }
        if self.bounces == true {
            strings.append("\(indentString)$0.bounces = <#Bool#>")
        }
        if self.indicatorStyle == true {
            strings.append("\(indentString)$0.indicatorStyle = <#UIScrollView.IndicatorStyle#>")
        }
        if self.showsVerticalScrollIndicator == true {
            strings.append("\(indentString)$0.showsVerticalScrollIndicator = <#Bool#>")
        }
        if self.showsHorizontalScrollIndicator == true {
            strings.append("\(indentString)$0.showsHorizontalScrollIndicator = <#Bool#>")
        }
        if self.minimumZoomScale == true {
            strings.append("\(indentString)$0.minimumZoomScale = <#CGFloat#>")
        }
        if self.maximumZoomScale == true {
            strings.append("\(indentString)$0.maximumZoomScale = <#CGFloat#>")
        }
        if self.zoomScale == true {
            strings.append("\(indentString)$0.zoomScale = <#CGFloat#>")
        }
        
        return strings
    }
}
