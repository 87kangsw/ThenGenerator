//
//  UIRefreshControlComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIRefreshControlComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIRefreshControl")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // tintColor
                    SwitchView(value: $homeState.refreshControlModel.tintColor, title: "tintColor")
                    
                    // attributedTitle
                    SwitchView(value: $homeState.refreshControlModel.attributedTitle, title: "attributedTitle")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIRefreshControlComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIRefreshControlComponent()
    }
}
