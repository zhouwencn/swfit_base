//
//  MyScrollView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/15.
//

import SwiftUI

struct MyScrollView: View {
    
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        VStack {
//            ScrollView {
//                VStack(spacing: 20) {
//                    ForEach(0..<10) {
//                        Text("Item \($0)")
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .frame(width: 200, height: 200)
//                            .background(Color.red)
//                    }
//                }
//            }
//            .frame(height: 350)
            
//            ScrollView {
//                ScrollViewReader { value in
//                    Button("Jump to #8") {
//                        value.scrollTo(8, anchor: .top)
//                    }
//                    .padding()
//
//                    ForEach(0..<100) { i in
//                        Text("Example \(i)")
//                            .font(.title)
//                            .frame(width: 200, height: 200)
//                            .background(colors[i % colors.count])
//                            .id(i)
//                    }
//                }
//            }
//            .frame(height: .infinity)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(1..<20) { num in
                        VStack {
                            GeometryReader { geo in
                                Text("Number \(num)")
                                    .font(.largeTitle)
                                    .padding()
                                    .background(Color.red)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 8), axis: (x: 0, y: 1, z: 0))
                                    .frame(width: 200, height: 200)
                            }
                            .frame(width: 200, height: 200)
                        }
                    }
                }
            }

        }
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView()
    }
}
