//
//  UISwitchComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UISwitchComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UISwitch")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // isOn
                    SwitchView(value: $homeState.switchModel.isOn, title: "isOn")
                    
                    // preferredStyle
                    SwitchView(value: $homeState.switchModel.preferredStyle, title: "preferredStyle")
                    
                    // style
                    SwitchView(value: $homeState.switchModel.style, title: "style")
                    
                    // title
                    SwitchView(value: $homeState.switchModel.title, title: "title")
                    
                    // onTintColor
                    SwitchView(value: $homeState.switchModel.onTintColor, title: "onTintColor")
                    
                    // thumbTintColor
                    SwitchView(value: $homeState.switchModel.thumbTintColor, title: "thumbTintColor")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UISwitchComponent_Previews: PreviewProvider {
    static var previews: some View {
        UISwitchComponent()
    }
}
