//
//  ThenGeneratorAppApp.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import SwiftUI

@main
struct ThenGeneratorAppApp: App {
    @StateObject private var homeState = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(homeState)
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
