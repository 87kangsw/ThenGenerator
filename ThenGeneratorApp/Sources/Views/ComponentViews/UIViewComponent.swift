//
//  UIViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/12.
//

import SwiftUI

struct UIViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // backgroundColor
                    SwitchView(value: $homeState.viewModel.backgroundColor, title: "backgroundColor")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIViewComponent()
    }
}

