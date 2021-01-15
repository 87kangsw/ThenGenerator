//
//  UIButtonComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIButtonComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIButton")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // setTitle
                    SwitchView(value: $homeState.buttonModel.setTitle, title: "setTitle")
                    
                    // setAttributedTitle
                    SwitchView(value: $homeState.buttonModel.setAttributedTitle, title: "setAttributedTitle")
                    
                    // titleLabelFont
                    SwitchView(value: $homeState.buttonModel.titleLabelFont, title: "titleLabelFont")
                    
                    // setTitleColor
                    SwitchView(value: $homeState.buttonModel.setTitleColor, title: "setTitleColor")
                    
                    // setImage
                    SwitchView(value: $homeState.buttonModel.setImage, title: "setImage")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIButtonComponent()
    }
}
