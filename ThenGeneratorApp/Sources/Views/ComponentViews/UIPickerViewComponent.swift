//
//  UIPickerViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIPickerViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIPickerView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // dataSource
                    SwitchView(value: $homeState.pickerViewModel.dataSource, title: "dataSource")
                    
                    // delegate
                    SwitchView(value: $homeState.pickerViewModel.delegate, title: "delegate")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIPickerViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIPickerViewComponent()
    }
}
