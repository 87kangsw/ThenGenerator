//
//  TabButton.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/07.
//

import SwiftUI

struct TabButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 14.0, weight: .semibold))
            .foregroundColor(.primary)
            .padding(.horizontal, 8.0)
            .frame(height: 30.0)
            .contentShape(Rectangle())
            .cornerRadius(10.0)
        
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton(title: "UILabel")
            .previewLayout(.sizeThatFits)
    }
}
