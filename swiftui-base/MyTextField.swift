//
//  MyTextField.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/17.
//

import SwiftUI

struct MyTextField: View {
    @State private var name: String = "Tom"
    @State private var emailAddress: String = "739856334@qq.com"
    @State private var score = 0
    @State private var password: String = ""
    @State private var showGreeting: Bool = true
    @State private var celsius: Double = 0
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    @State private var brithday: Date = Date()

    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                TextField("enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("请输入邮箱地址 xx@xx.com", text: $emailAddress)
                    .disableAutocorrection(true)
                TextField("转账金额", value: $score, formatter: formatter)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding()
                SecureField("Enter a password", text: $password)
                Toggle("Show welcome message", isOn: $showGreeting)
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                if showGreeting {
                    Text("Hello World")
                }
                
                Slider(value: $celsius, in: -100...100)
                
                Text("You entered: \(password)")
                
                
                Text("您的分数是 \(score).")
                
                Text("Hello, \(name)!")
            }
            
            Group{
                Picker("Please choose a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                Text("You selected: \(selectedColor)")
                
//                DatePicker(selection: $brithday, in: ...Date(), displayedComponents: .hourAndMinute) {
//                    Text("select a date")
//                }
                
                DatePicker("Enter your birthday", selection: $brithday)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)

            }
            
        }
    }
}

struct MyTextField_Previews: PreviewProvider {
    static var previews: some View {
        MyTextField()
    }
}
