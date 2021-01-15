//
//  SwitchView.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/13.
//

import SwiftUI

struct SwitchView: View {
    @Binding var value: Bool
    var title: String
    
    var body: some View {
        Toggle(isOn: $value, label: {
            HStack {
                Text(title)
                Spacer()
            }
        })
        .toggleStyle(SwitchToggleStyle())
    }
}
