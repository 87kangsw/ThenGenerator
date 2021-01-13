//
//  HomeViewModel.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/07.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var components: [UIComponents] = UIComponents.allCases
    @Published var selectedComponents: UIComponents?
    
    // Common
    @Published var commonModel = CommonModel()
    
    // UILabel
    @Published var labelModel = UILabelModel()
    
    // UITextField
    @Published var textFieldModel = UITextFieldModel()
    
    // UITextView
    @Published var textViewModel = UITextViewModel()
    
    // UISearchBar
    @Published var searchBarModel = UISearchBarModel()
    
    // UITableView
    @Published var tableViewModel = UITableViewModel()
    
    // UICollectionView
    @Published var collectionViewModel = UICollectionViewModel()
    
    // UIScrollView
    @Published var scrollViewModel = UIScrollViewModel()
    
    // UIButton
    @Published var buttonModel = UIButtonModel()
    
    // UISegmentedControl
    @Published var segmentedControlModel = UISegmentedControlModel()
    
    // UISlider
    @Published var sliderModel = UISliderModel()
    
    // UISwitch
    @Published var switchModel = UISwitchModel()
    
    // UIStepper
    @Published var stepperModel = UIStepperModel()
    
    // UIPageControl
    @Published var pageControlModel = UIPageControlModel()
    
    // UIActivityIndicatorView
    @Published var indicatorViewModel = UIActivityIndicatorViewModel()
    
    // UIProgressView
    @Published var progressViewModel = UIProgressViewModel()
    
    // UIRefreshControl
    @Published var refreshControlModel = UIRefreshControlModel()
    
    // UIDatePicker
    @Published var datePickerModel = UIDatePickerModel()
    
    // UIPickerView
    @Published var pickerViewModel = UIPickerViewModel()
    
    // UIStackView
    @Published var stackViewModel = UIStackViewModel()
    
    // UIImageView
    @Published var imageViewModel = UIImageViewModel()
    
    // UIVisualEffectView
    @Published var visualEffectViewModel = UIVisualEffectViewModel()
    
    // UIView
    @Published var viewModel = UIViewModel()
    
    // UIToolBar
    @Published var toolBarModel = UIToolbarModel()
    
    // UINavigationBar
    @Published var navigationBarModel = UINavigationBarModel()
    
    // UITabBar
    @Published var tabBarModel = UITabBarModel()
}
