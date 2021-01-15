//
//  UIStepperComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIStepperComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIStepper")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    // isContinuous
                    SwitchView(value: $homeState.stepperModel.isContinuous, title: "isContinuous")
                    
                    // autorepeat
                    SwitchView(value: $homeState.stepperModel.autorepeat, title: "autorepeat")
                    
                    // wraps
                    SwitchView(value: $homeState.stepperModel.wraps, title: "wraps")
                    
                    // minimumValue
                    SwitchView(value: $homeState.stepperModel.minimumValue, title: "minimumValue")
                    
                    // maximumValue
                    SwitchView(value: $homeState.stepperModel.maximumValue, title: "maximumValue")
                    
                    // stepValue
                    SwitchView(value: $homeState.stepperModel.stepValue, title: "stepValue")
                    
                    // value
                    SwitchView(value: $homeState.stepperModel.value, title: "value")
                    
                    // setDividerImage
                    SwitchView(value: $homeState.stepperModel.setDividerImage, title: "setDividerImage")
                    
                    // setIncrementImage
                    SwitchView(value: $homeState.stepperModel.setIncrementImage, title: "setIncrementImage")
                    
                    // setDecrementImage
                    SwitchView(value: $homeState.stepperModel.setDecrementImage, title: "setDecrementImage")
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIStepperComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIStepperComponent()
    }
}
