//
//  UIToolBarComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIToolBarComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIToolbar")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // delegate
                    SwitchView(value: $homeState.toolBarModel.delegate, title: "delegate")
                    
                    // setItems
                    SwitchView(value: $homeState.toolBarModel.setItems, title: "setItems")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIToolBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIToolBarComponent()
    }
}
