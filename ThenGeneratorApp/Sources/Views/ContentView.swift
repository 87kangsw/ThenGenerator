//
//  ContentView.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/03.
//

import SwiftUI

struct ContentView: View {
    @State private var model = UILabelModel()
    
    var body: some View {
        VStack(spacing: 10.0) {
            Toggle("text", isOn: $model.text)
                .toggleStyle(SwitchToggleStyle())
            
        }
        .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
