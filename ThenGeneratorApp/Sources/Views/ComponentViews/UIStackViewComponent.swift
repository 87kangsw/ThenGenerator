//
//  UIStackViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIStackViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIStackView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // axis
                    SwitchView(value: $homeState.stackViewModel.axis, title: "axis")
                    
                    // spacing
                    SwitchView(value: $homeState.stackViewModel.spacing, title: "spacing")
                    
                    // alignment
                    SwitchView(value: $homeState.stackViewModel.alignment, title: "alignment")
                    
                    // distribution
                    SwitchView(value: $homeState.stackViewModel.distribution, title: "distribution")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIStackViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIStackViewComponent()
    }
}
