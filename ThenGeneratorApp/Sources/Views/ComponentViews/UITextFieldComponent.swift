//
//  UITextFieldComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct UITextFieldComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UITextField")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // font
                    SwitchView(value: $homeState.textFieldModel.font, title: "font")
                    
                    // text
                    SwitchView(value: $homeState.textFieldModel.text, title: "text")
                    
                    // textColor
                    SwitchView(value: $homeState.textFieldModel.textColor, title: "textColor")
                    
                    // textAlignment
                    SwitchView(value: $homeState.textFieldModel.textAlignment, title: "textAlignment")
                    
                    // placeholder
                    SwitchView(value: $homeState.textFieldModel.placeholder, title: "placeholder")
                    
                    // attributedPlaceholder
                    SwitchView(value: $homeState.textFieldModel.attributedPlaceholder, title: "attributedPlaceholder")
                    
                    // borderStyle
                    SwitchView(value: $homeState.textFieldModel.borderStyle, title: "borderStyle")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UITextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        UITextFieldComponent()
    }
}
