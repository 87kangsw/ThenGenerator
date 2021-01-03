//
//  ThenGeneratorAppApp.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import SwiftUI

@main
struct ThenGeneratorAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: {
                    print(UILabelModel().thenStringArray(indent: 4))
                })
        }
    }
}
