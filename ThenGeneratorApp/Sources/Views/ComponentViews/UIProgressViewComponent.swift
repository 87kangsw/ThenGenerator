//
//  UIProgressViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIProgressViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIProgressView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // progressViewStyle
                    SwitchView(value: $homeState.progressViewModel.progressViewStyle, title: "progressViewStyle")
                    
                    // progressTintColor
                    SwitchView(value: $homeState.progressViewModel.progressTintColor, title: "progressTintColor")
                    
                    // progressImage
                    SwitchView(value: $homeState.progressViewModel.progressImage, title: "progressImage")
                    
                    // trackTintColor
                    SwitchView(value: $homeState.progressViewModel.trackTintColor, title: "trackTintColor")
                    
                    // trackImage
                    SwitchView(value: $homeState.progressViewModel.trackImage, title: "trackImage")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIProgressViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIProgressViewComponent()
    }
}
