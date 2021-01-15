//
//  UIActivityIndicatorViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIActivityIndicatorViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIActivityIndicatorView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // currentPage
                    SwitchView(value: $homeState.indicatorViewModel.hidesWhenStopped, title: "hidesWhenStopped")
                    
                    // style
                    SwitchView(value: $homeState.indicatorViewModel.style, title: "style")
                    
                    // color
                    SwitchView(value: $homeState.indicatorViewModel.color, title: "color")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIActivityIndicatorViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIActivityIndicatorViewComponent()
    }
}
