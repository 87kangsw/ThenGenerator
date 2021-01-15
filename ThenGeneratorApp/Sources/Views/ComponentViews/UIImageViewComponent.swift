//
//  UIImageViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIImageViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIImageView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // image
                    SwitchView(value: $homeState.imageViewModel.image, title: "image")
                    
                    // contentMode
                    SwitchView(value: $homeState.imageViewModel.contentMode, title: "contentMode")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIImageViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIImageViewComponent()
    }
}
