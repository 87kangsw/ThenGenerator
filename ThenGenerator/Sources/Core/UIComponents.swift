//
//  UIComponents.swift
//  ThenGeneratorCore
//
//  Created by Kanz on 2021/01/01.
//

import SwiftUI

public enum UIComponents: String, CaseIterable {
    
    case label
    case button
    case segmentedControl
    case textField
    case slider
    
    case `switch`
    case activityIndicatorView
    case progressView
    case stepper
    case stackView
    
    case tableView
    case imageView
    case collectionView
    case textView
    case scrollView
    
    case datePicker
    case pickerView
    case visualEffectView
    case refreshControl
    case searchBar
    
    case pageControl
    case view
    case toolBar
    case navigationBar
    case tabBar
    
    init(variableName: String) {
        let lowerCasedVariableName = variableName.lowercased()
        let target = UIComponents.allCases
            .filter { lowerCasedVariableName.hasSuffix($0.rawValue.lowercased()) }
            .first
        
        self = target ?? .view
    }
    
    var viewInitName: String {
        switch self {
        case .collectionView:
            return "UICollectionView(frame: .zero, collectionViewLayout: <#UICollectionViewLayout#>)"
        case .visualEffectView:
            return "UIVisualEffectView(effect: <#UIVisualEffect?#>)"
        case .segmentedControl:
            return "UISegmentedControl(items: <#T##[Any]?#>)"
        case .label,
             .button,
             .textField,
             .slider,
             .`switch`,
             .activityIndicatorView,
             .progressView,
             .stepper,
             .stackView,
             .tableView,
             .imageView,
             .textView,
             .scrollView,
             .datePicker,
             .pickerView,
             .refreshControl,
             .searchBar,
             .pageControl,
             .view,
             .toolBar,
             .navigationBar,
             .tabBar:
            return "UI" + rawValue.prefix(1).uppercased() + rawValue.dropFirst() + "()"
        }
    }
    
    public func getThenDataModel() -> ThenModelProtocol? {
        switch self {
        case .label:
            return UILabelModel()
        case .button:
            return UIButtonModel()
        case .textField:
            return UITextFieldModel()
        case .tableView:
            return UITableViewModel()
        case .collectionView:
            return UICollectionViewModel()
        case .stackView:
            return UIStackViewModel()
        case .activityIndicatorView:
            return UIActivityIndicatorViewModel()
        case .imageView:
            return UIImageViewModel()
        case .textView:
            return UITextViewModel()
        case .scrollView:
            return UIScrollViewModel()
        case .pageControl:
            return UIPageControlModel()
        case .refreshControl:
            return UIRefreshControlModel()
        case .`switch`:
            return UISwitchModel()
        case .slider:
            return UISliderModel()
        case .progressView:
            return UIProgressViewModel()
        case .searchBar:
            return UISearchBarModel()
        case .stepper:
            return UIStepperModel()
        case .datePicker:
            return UIDatePickerModel()
        case .pickerView:
            return UIPickerViewModel()
        case .visualEffectView:
            return UIVisualEffectViewModel()
        case .view:
            return UIViewModel()
        case .toolBar:
            return UIToolbarModel()
        case .navigationBar:
            return UINavigationBarModel()
        case .tabBar:
            return UITabBarModel()
        case .segmentedControl:
            return UISegmentedControlModel()
        }
    }
    
    // MARK: - For View
    var fullName: String? {
        return "UI" + rawValue.prefix(1).uppercased() + rawValue.dropFirst()
    }
    
    var category: ModelCategory {
        switch self {
        case .label,
             .textField,
             .textView,
             .searchBar:
            return .text
        case .scrollView,
             .tableView,
             .collectionView:
            return .scroll
        case .button,
             .pageControl,
             .`switch`,
             .slider,
             .stepper,
             .segmentedControl:
            return .control
        case .activityIndicatorView,
             .refreshControl,
             .progressView:
            return .loading
        case .pickerView,
             .datePicker:
            return .picker
        case .view,
             .imageView,
             .stackView,
             .visualEffectView,
             .navigationBar,
             .tabBar,
             .toolBar:
            return .view
        }
    }
    
    @ViewBuilder
    func makeView() -> some View {
        switch self {
        case .label:
            UILabelComponent()
        case .textField:
            UITextFieldComponent()
        case .textView:
            UITextViewComponent()
        case .searchBar:
            UISearchBarComponent()
        case .tableView:
            UITableViewComponent()
        case .collectionView:
            UICollectionViewComponent()
        case .scrollView:
            UIScrollViewComponent()
        case .button:
            UIButtonComponent()
        case .segmentedControl:
            UISegmentedControlComponent()
        case .slider:
            UISliderComponent()
        case .switch:
            UISwitchComponent()
        case .stepper:
            UIStepperComponent()
        case .pageControl:
            UIPageControlComponent()
        case .activityIndicatorView:
            UIActivityIndicatorViewComponent()
        case .progressView:
            UIProgressViewComponent()
        case .refreshControl:
            UIRefreshControlComponent()
        case .datePicker:
            UIDatePickerComponent()
        case .pickerView:
            UIPickerViewComponent()
        case .stackView:
            UIStackViewComponent()
        case .imageView:
            UIImageViewComponent()
        case .visualEffectView:
            UIVisualEffectViewComponent()
        case .view:
            UIViewComponent()
        case .toolBar:
            UIToolBarComponent()
        case .navigationBar:
            UINavigationBarComponent()
        case .tabBar:
            UITabBarComponent()
        }
    }
}
 
// MARK: - Component Category
public enum ModelCategory: String, CaseIterable {
    case text
    case scroll
    case control
    case loading
    case picker
    case view
    case common
    
    var iconName: String {
        switch self {
        case .text:
            return "textformat"
        case .scroll:
            return "arrow.up.and.down.square"
        case .control:
            return "gamecontroller"
        case .loading:
            return "rays"
        case .picker:
            return "eyedropper.halffull"
        case .view:
            return "eyeglasses"
        case .common:
            return "gearshape"
        }
    }
    
    var title: String {
        return rawValue.prefix(1).uppercased() + rawValue.dropFirst()
    }
}
