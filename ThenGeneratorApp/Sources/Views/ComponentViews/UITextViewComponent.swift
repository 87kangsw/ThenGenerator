//
//  UITextViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct UITextViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UITextView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // text
                    SwitchView(value: $homeState.textViewModel.text, title: "text")
                    
                    // textColor
                    SwitchView(value: $homeState.textViewModel.textColor, title: "textColor")
                    
                    // font
                    SwitchView(value: $homeState.textViewModel.font, title: "font")
                    
                    // textAlignment
                    SwitchView(value: $homeState.textViewModel.textAlignment, title: "textAlignment")
                    
                    // isEditable
                    SwitchView(value: $homeState.textViewModel.isEditable, title: "isEditable")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UITextViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UITextViewComponent()
    }
}
