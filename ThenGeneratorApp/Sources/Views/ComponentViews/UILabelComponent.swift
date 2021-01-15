//
//  UILabelComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct UILabelComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UILabel")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // Text
                    SwitchView(value: $homeState.labelModel.text, title: "text")
                    
                    // textColor
                    SwitchView(value: $homeState.labelModel.textColor, title: "textColor")
                    
                    // font
                    SwitchView(value: $homeState.labelModel.font, title: "font")
                    
                    // adjustsFontSizeToFitWidth
                    SwitchView(value: $homeState.labelModel.adjustsFontSizeToFitWidth, title: "adjustsFontSizeToFitWidth")
                   
                    // attributedText
                    SwitchView(value: $homeState.labelModel.attributedText, title: "attributedText")
                    
                    // lineBreakMode
                    SwitchView(value: $homeState.labelModel.lineBreakMode, title: "lineBreakMode")
                    
                    // numberOfLines
                    SwitchView(value: $homeState.labelModel.numberOfLines, title: "numberOfLines")
                    
                    // textAlignment
                    SwitchView(value: $homeState.labelModel.textAlignment, title: "textAlignment")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UILabelComponent_Previews: PreviewProvider {
    static var previews: some View {
        UILabelComponent()
    }
}
