//
//  UICollectionViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UICollectionViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UICollectionView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // register
                    SwitchView(value: $homeState.collectionViewModel.register, title: "register")
                    
                    // backgroundColor
                    SwitchView(value: $homeState.collectionViewModel.backgroundColor, title: "backgroundColor")
                    
                    // dataSource
                    SwitchView(value: $homeState.collectionViewModel.dataSource, title: "dataSource")
                    
                    // delegate
                    SwitchView(value: $homeState.collectionViewModel.delegate, title: "delegate")
                    
                    // showsVerticalScrollIndicator
                    SwitchView(value: $homeState.collectionViewModel.showsVerticalScrollIndicator, title: "showsVerticalScrollIndicator")
                    
                    // showsHorizontalScrollIndicator
                    SwitchView(value: $homeState.collectionViewModel.showsHorizontalScrollIndicator, title: "showsHorizontalScrollIndicator")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UICollectionViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UICollectionViewComponent()
    }
}
