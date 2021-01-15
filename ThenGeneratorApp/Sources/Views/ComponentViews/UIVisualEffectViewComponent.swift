//
//  UIVisualEffectViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIVisualEffectViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIVisualEffectView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // effect
                    SwitchView(value: $homeState.visualEffectViewModel.effect, title: "effect")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIVisualEffectViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIVisualEffectViewComponent()
    }
}
