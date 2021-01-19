//
//  UsageView.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/18.
//

import SwiftUI

struct UsageView: View {
    var body: some View {
        Button(action: {
            self.openGitHub()
        }, label: {
            HStack {
                Text("How to use?")

                Spacer()
                Image(systemName: "questionmark.circle.fill")
            }
        })
        .padding(.horizontal, 12.0)
        .padding(.vertical, 8.0)
        .buttonStyle(PlainButtonStyle())
    }
    
    private func openGitHub() {
        guard let url = URL(string: "https://github.com/87kangsw/ThenGenerator") else { return }
        NSWorkspace.shared.open(url)
    }
}

struct UsageView_Previews: PreviewProvider {
    static var previews: some View {
        UsageView()
    }
}
