//
//  UISegmentedControlComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UISegmentedControlComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UISegmentedControl")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // setImage
                    SwitchView(value: $homeState.segmentedControlModel.setImage, title: "setImage")
                    
                    // setTitle
                    SwitchView(value: $homeState.segmentedControlModel.setTitle, title: "setTitle")
                    
                    // setEnabled
                    SwitchView(value: $homeState.segmentedControlModel.setEnabled, title: "setEnabled")
                    
                    // setBackgroundImage
                    SwitchView(value: $homeState.segmentedControlModel.setBackgroundImage, title: "setBackgroundImage")
                    
                    // setDividerImage
                    SwitchView(value: $homeState.segmentedControlModel.setDividerImage, title: "setDividerImage")
                    
                    // setTitleTextAttributes
                    SwitchView(value: $homeState.segmentedControlModel.setTitleTextAttributes, title: "setTitleTextAttributes")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UISegmentedControlComponent_Previews: PreviewProvider {
    static var previews: some View {
        UISegmentedControlComponent()
    }
}
