//
//  UITableViewComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct UITableViewComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UITableView")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // estimatedRowHeight
                    SwitchView(value: $homeState.tableViewModel.estimatedRowHeight, title: "estimatedRowHeight")
                    
                    // rowHeight
                    SwitchView(value: $homeState.tableViewModel.rowHeight, title: "rowHeight")
                    
                    // separatorStyle
                    SwitchView(value: $homeState.tableViewModel.separatorStyle, title: "separatorStyle")
                    
                    // backgroundColor
                    SwitchView(value: $homeState.tableViewModel.backgroundColor, title: "backgroundColor")
                    
                    // separatorColor
                    SwitchView(value: $homeState.tableViewModel.separatorColor, title: "separatorColor")
                    
                    // register
                    SwitchView(value: $homeState.tableViewModel.register, title: "register")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UITableViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        UITableViewComponent()
    }
}
