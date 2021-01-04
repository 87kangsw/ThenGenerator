//
//  UIComponents.swift
//  ThenGeneratorCore
//
//  Created by Kanz on 2021/01/01.
//

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
    
    case none = "_VariableName_"
    
    init(variableName: String) {
        let lowerCasedVariableName = variableName.lowercased()
        let target = UIComponents.allCases
            .filter { lowerCasedVariableName.hasSuffix($0.rawValue.lowercased()) }
            .first
        
        self = target ?? .none
    }
    
    var fullName: String {
        switch self {
        case .none:
            return self.rawValue
        case .collectionView:
            return "UICollectionView(frame: .zero, collectionViewLayout: <#UICollectionViewLayout#>)"
        case .label,
             .button,
             .segmentedControl,
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
             .visualEffectView,
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
    
    
    func getThenDataModel() -> ThenModelProtocol? {
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
        default:
            return nil
        }
    }
}
