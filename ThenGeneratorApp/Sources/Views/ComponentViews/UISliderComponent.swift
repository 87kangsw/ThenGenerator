//
//  UISliderComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UISliderComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UISlider")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    Group {
                        // value
                        SwitchView(value: $homeState.sliderModel.value, title: "value")
                        
                        // minimumValue
                        SwitchView(value: $homeState.sliderModel.minimumValue, title: "minimumValue")
                        
                        // maximumValue
                        SwitchView(value: $homeState.sliderModel.maximumValue, title: "maximumValue")
                        
                        // minimumValueImage
                        SwitchView(value: $homeState.sliderModel.minimumValueImage, title: "minimumValueImage")
                        
                        // maximumValueImage
                        SwitchView(value: $homeState.sliderModel.maximumValueImage, title: "maximumValueImage")
                        
                        // minimumTrackTintColor
                        SwitchView(value: $homeState.sliderModel.minimumTrackTintColor, title: "minimumTrackTintColor")
                    }
                    
                    Group {
                        // currentMinimumTrackImage
                        SwitchView(value: $homeState.sliderModel.currentMinimumTrackImage, title: "currentMinimumTrackImage")
                        
                        // maximumTrackTintColor
                        SwitchView(value: $homeState.sliderModel.maximumTrackTintColor, title: "maximumTrackTintColor")
                        
                        // currentMaximumTrackImage
                        SwitchView(value: $homeState.sliderModel.currentMaximumTrackImage, title: "currentMaximumTrackImage")
                        
                        // thumbTintColor
                        SwitchView(value: $homeState.sliderModel.thumbTintColor, title: "thumbTintColor")
                        
                        // currentThumbImage
                        SwitchView(value: $homeState.sliderModel.currentThumbImage, title: "currentThumbImage")
                    }
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UISliderComponent_Previews: PreviewProvider {
    static var previews: some View {
        UISliderComponent()
    }
}
