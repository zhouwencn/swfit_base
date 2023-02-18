//
//  ContentView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/12.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.redactionReasons) var redactionReasons
    let bio = "The rain in Spain falls mainly on the Spaniards"
    
    @State private var alignment: TextAlignment = TextAlignment.leading
    
    var body: some View {
        VStack {
            Group {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .font(.largeTitle) // 设置字体大小
                    .foregroundColor(Color.red) // 设置字体颜色
                    .background(.blue) // 设置Text的背景色
    //                .tracking(20)
    //                .kerning(50)
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(3) // 限制行数，这里只允许三行
                    .frame(width: 200)
                    .truncationMode(.middle) // 设置截断文本的位置
                    .lineSpacing(10) // 行距
                    .textCase(.uppercase)
                            
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .font(.largeTitle)
                    .frame(width: 300) // 设置宽高
                    .multilineTextAlignment(.trailing) // 设置对其方式
                
                Divider()
                
                
                ChangeText(alignment: $alignment)
                Divider()
                TextDateView()
                
                Text(Date()...Date().addingTimeInterval(600))

                Text(Date().addingTimeInterval(600), style: .date)
            }
            
            Group {
                Text("This is placeholder text")
                    .font(.title)
                    .redacted(reason: .placeholder)
                VStack {
                    Text("This is placeholder text")
                    Text("And so is this")
                }
                .font(.title)
                .redacted(reason: .placeholder)
                
                if redactionReasons == .placeholder {
                    Text("Loading…")
                } else {
                    Text(bio)
                        .redacted(reason: redactionReasons)
                }
                
                Text("Card number")
                    .font(.headline)
                
                Text("1234 5678 9012 3456")
                    .privacySensitive()
                    .textSelection(.enabled)
            }

        }
        .padding()
    }
}

struct ChangeText: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @Binding var alignment: TextAlignment
    
    var body: some View {
        VStack {
            Picker("Text alignment", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                    Text(String(describing: alignment))
                }
            }
            
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(alignment)
                .frame(width: 300)
        }
    }
}


struct TextDateView: View {
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    let dueDate = Date()
    var body: some View{
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
