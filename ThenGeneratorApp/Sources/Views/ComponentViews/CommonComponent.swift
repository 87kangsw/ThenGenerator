//
//  CommonComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/12.
//

import SwiftUI
import Combine

struct CommonComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    private var accessModifiers: [String] = AccessModifier.allCases.map { $0.rawValue }
    private var indents: [Int] = [2, 4, 6]
    
    var body: some View {
        VStack {
            Text("Common")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    // translatesAutoresizingMaskIntoConstraints
                    SwitchView(value: $homeState.commonModel.translatesAutoresizingMaskIntoConstraints, title: "translatesAutoresizingMaskIntoConstraints")
                    
                    // AccessModifier
                    Picker(selection: $homeState.commonModel.accessModifierRaw,
                           label: Text("AccessModifier")
                            .frame(width: 200),
                           content: {
                            ForEach(self.accessModifiers, id: \.self) { item in
                                Text(item)
//                                    .tag(item)
                            }
                           })
                        .pickerStyle(RadioGroupPickerStyle())
                    
                    
                    // Indent
                    Picker(selection: $homeState.commonModel.indent,
                           label: Text("Indent")
                            .frame(width: 200),
                           content: {
                            ForEach(self.indents, id: \.self) { item in
                                Text("\(item)")
//                                    .tag("\(item)")
                            }
                           })
                        .pickerStyle(RadioGroupPickerStyle())
                        .scaledToFit()
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct CommonComponent_Previews: PreviewProvider {
    static var previews: some View {
        CommonComponent()
    }
}
