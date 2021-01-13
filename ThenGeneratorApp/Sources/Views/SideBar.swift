//
//  SideBar.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/10.
//

import SwiftUI

struct SideBar: View {
    @EnvironmentObject private var homeState: HomeViewModel

    var body: some View {
        List(selection: $homeState.selectedComponents) {
            
            Section(header: SectionHeaderView(category: .common)) {
                NavigationLink(
                    destination: CommonComponent(),
                    label: {
                        TabButton(title: "Common")
                    })
            }
            
            // Text
            ComponentSection(components: homeState.components.filter { $0.category == .text }, category: .text)
            
            // Scroll
            ComponentSection(components: homeState.components.filter { $0.category == .scroll }, category: .scroll)
            
            // Control
            ComponentSection(components: homeState.components.filter { $0.category == .control }, category: .control)
            
            // Loading
            ComponentSection(components: homeState.components.filter { $0.category == .loading }, category: .loading)
            
            // Picker
            ComponentSection(components: homeState.components.filter { $0.category == .picker }, category: .picker)
            
            // Views
            ComponentSection(components: homeState.components.filter { $0.category == .view }, category: .view)
        }
        .environmentObject(homeState)
        .animation(nil)
        .listStyle(SidebarListStyle())
        .frame(minWidth: 250, idealWidth: 250, maxWidth: 400, maxHeight: .infinity)
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}

// MARK: - Section

struct SectionHeaderView: View {
    var category: ModelCategory
    
    var body: some View {
        HStack {
            Image(systemName: category.iconName)
                .font(.system(size: 15.0, weight: .semibold))
                .foregroundColor(.primary)
            
            Text(category.title)
                .font(.system(size: 14.0, weight: .semibold))
                .foregroundColor(.primary)
        }
    }
}

struct ComponentSection: View {
    var components: [UIComponents]
    let category: ModelCategory
    
    var body: some View {
        Section(header: SectionHeaderView(category: category)) {
            ForEach(components, id: \.fullName) { component in
                NavigationLink(
                    destination: component.makeView(),
                    label: {
                        TabButton(title: component.fullName!)
                    })
            }
        }
    }
}
