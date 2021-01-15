//
//  UISearchBarComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct UISearchBarComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UISearchBar")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                
                
                VStack(alignment: .leading, spacing: 10.0) {
                    Group {
                        // delegate
                        SwitchView(value: $homeState.searchBarModel.delegate, title: "delegate")
                        
                        // placeholder
                        SwitchView(value: $homeState.searchBarModel.placeholder, title: "placeholder")
                        
                        // prompt
                        SwitchView(value: $homeState.searchBarModel.prompt, title: "prompt")
                        
                        // text
                        SwitchView(value: $homeState.searchBarModel.text, title: "text")
                        
                        // barTintColor
                        SwitchView(value: $homeState.searchBarModel.barTintColor, title: "barTintColor")
                        
                        // searchBarStyle
                        SwitchView(value: $homeState.searchBarModel.searchBarStyle, title: "searchBarStyle")
                        
                        // tintColor
                        SwitchView(value: $homeState.searchBarModel.tintColor, title: "tintColor")
                        
                        // isTranslucent
                        SwitchView(value: $homeState.searchBarModel.isTranslucent, title: "isTranslucent")
                    }
                    
                    Group {
                        // barStyle
                        SwitchView(value: $homeState.searchBarModel.barStyle, title: "barStyle")
                        
                        // showsCancelButton
                        SwitchView(value: $homeState.searchBarModel.showsCancelButton, title: "showsCancelButton")
                        
                        // showsBookmarkButton
                        SwitchView(value: $homeState.searchBarModel.showsBookmarkButton, title: "showsBookmarkButton")
                        
                        // showsSearchResultsButton
                        SwitchView(value: $homeState.searchBarModel.showsSearchResultsButton, title: "showsSearchResultsButton")
                        
                        // showsScopeBar
                        SwitchView(value: $homeState.searchBarModel.showsScopeBar, title: "showsScopeBar")
                        
                        // backgroundImage
                        SwitchView(value: $homeState.searchBarModel.backgroundImage, title: "backgroundImage")
                        
                        // scopeBarBackgroundImage
                        SwitchView(value: $homeState.searchBarModel.scopeBarBackgroundImage, title: "scopeBarBackgroundImage")
                    }
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UISearchBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        UISearchBarComponent()
    }
}
