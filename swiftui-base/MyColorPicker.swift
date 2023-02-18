//
//  MyColorPicker.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/18.
//

import SwiftUI

struct MyColorPicker: View {
    
    @State private var bgColor: Color = Color.red
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor)
            
            // 禁用不透明
            ColorPicker("Picker Color", selection: $bgColor, supportsOpacity: false)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct MyColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        MyColorPicker()
    }
}
