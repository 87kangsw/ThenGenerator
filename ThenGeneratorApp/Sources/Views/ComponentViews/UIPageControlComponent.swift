//
//  UIPageControlComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIPageControlComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIPageControl")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // currentPage
                    SwitchView(value: $homeState.pageControlModel.currentPage, title: "currentPage")
                    
                    // numberOfPages
                    SwitchView(value: $homeState.pageControlModel.numberOfPages, title: "numberOfPages")
                    
                    // hidesForSinglePage
                    SwitchView(value: $homeState.pageControlModel.hidesForSinglePage, title: "hidesForSinglePage")
                    
                    // pageIndicatorTintColor
                    SwitchView(value: $homeState.pageControlModel.pageIndicatorTintColor, title: "pageIndicatorTintColor")
                    
                    // currentPageIndicatorTintColor
                    SwitchView(value: $homeState.pageControlModel.currentPageIndicatorTintColor, title: "currentPageIndicatorTintColor")
                    
                    // backgroundStyle
                    SwitchView(value: $homeState.pageControlModel.backgroundStyle, title: "backgroundStyle")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIPageControlComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIPageControlComponent()
    }
}
