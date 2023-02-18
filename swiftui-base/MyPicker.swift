//
//  MyPicker.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/18.
//

import SwiftUI

struct MyPicker: View {
    @State private var favoriteColor = "Red"
    @State private var age = 0
    @State private var selectedNumber = 0
    
    var colors = ["Red", "Green", "Blue"]
    var body: some View {
        VStack {
            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Value: \(favoriteColor)")
            
            
            Stepper("Enter your name", value: $age, in: 0...130)
            
            
            Stepper("Enter your age", onIncrement: {
                age += 1
            }, onDecrement: {
                age -= 1
            })
            
            Text("Your age is \(age)")
            
            Picker("选择数字", selection: $selectedNumber) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
            .labelsHidden()    
        }
    }
}

struct MyPicker_Previews: PreviewProvider {
    static var previews: some View {
        MyPicker()
    }
}
