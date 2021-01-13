//
//  Home.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/07.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var homeState: HomeViewModel
    var window = NSScreen.main?.visibleFrame

    var body: some View {
        NavigationView {
            SideBar()
                .environmentObject(homeState)
        }
        .background(BlurWindow())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
