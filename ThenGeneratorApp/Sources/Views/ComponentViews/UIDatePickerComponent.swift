//
//  UIDatePickerComponent.swift
//  ThenGeneratorApp
//
//  Created by Kanz on 2021/01/14.
//

import SwiftUI

struct UIDatePickerComponent: View {
    @EnvironmentObject private var homeState: HomeViewModel
    
    var body: some View {
        VStack {
            Text("UIDatePicker")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10.0) {
                    
                    Group {
                        // calendar
                        SwitchView(value: $homeState.datePickerModel.calendar, title: "calendar")
                        
                        // date
                        SwitchView(value: $homeState.datePickerModel.date, title: "date")
                        
                        // locale
                        SwitchView(value: $homeState.datePickerModel.locale, title: "locale")
                        
                        // timeZone
                        SwitchView(value: $homeState.datePickerModel.timeZone, title: "timeZone")
                        
                        // datePickerMode
                        SwitchView(value: $homeState.datePickerModel.datePickerMode, title: "datePickerMode")
                        
                        // datePickerStyle
                        SwitchView(value: $homeState.datePickerModel.datePickerStyle, title: "datePickerStyle")
                    }
                    
                    Group {
                        // preferredDatePickerStyle
                        SwitchView(value: $homeState.datePickerModel.preferredDatePickerStyle, title: "preferredDatePickerStyle")
                        
                        // maximumDate
                        SwitchView(value: $homeState.datePickerModel.maximumDate, title: "maximumDate")
                        
                        // minimumDate
                        SwitchView(value: $homeState.datePickerModel.minimumDate, title: "minimumDate")
                        
                        // minuteInterval
                        SwitchView(value: $homeState.datePickerModel.minuteInterval, title: "minuteInterval")
                        
                        // countDownDuration
                        SwitchView(value: $homeState.datePickerModel.countDownDuration, title: "countDownDuration")
                    }
                }
            }
        }
        .padding(.horizontal, 30.0)
    }
}

struct UIDatePickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        UIDatePickerComponent()
    }
}
