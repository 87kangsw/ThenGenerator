//
//  UIScrollViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIScrollViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIScrollView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // isScrollEnabled
                    SwitchView(value: $homeState.scrollViewModel.isScrollEnabled, title: "isScrollEnabled")
                    
                    // isPagingEnabled
                    SwitchView(value: $homeState.scrollViewModel.isPagingEnabled, title: "isPagingEnabled")
                    
                    // bounces
                    SwitchView(value: $homeState.scrollViewModel.bounces, title: "bounces")
                    
                    // indicatorStyle
                    SwitchView(value: $homeState.scrollViewModel.indicatorStyle, title: "indicatorStyle")
                    
                    // showsVerticalScrollIndicator
                    SwitchView(value: $homeState.scrollViewModel.showsVerticalScrollIndicator, title: "showsVerticalScrollIndicator")
                    
                    // showsHorizontalScrollIndicator
                    SwitchView(value: $homeState.scrollViewModel.showsHorizontalScrollIndicator, title: "showsHorizontalScrollIndicator")
                    
                    // minimumZoomScale
                    SwitchView(value: $homeState.scrollViewModel.minimumZoomScale, title: "minimumZoomScale")
                    
                    // maximumZoomScale
                    SwitchView(value: $homeState.scrollViewModel.maximumZoomScale, title: "maximumZoomScale")
                    
                    // zoomScale
                    SwitchView(value: $homeState.scrollViewModel.zoomScale, title: "zoomScale")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIScrollViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIScrollViewComponent()
    }
}
