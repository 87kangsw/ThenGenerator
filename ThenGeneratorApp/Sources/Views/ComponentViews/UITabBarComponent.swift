//
//  UITabBarComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UITabBarComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UITabBar")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // delegate
                    SwitchView(value: $homeState.tabBarModel.delegate, title: "delegate")
                    
                    // setItems
                    SwitchView(value: $homeState.tabBarModel.setItems, title: "setItems")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UITabBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        UITabBarComponent()
    }
}
