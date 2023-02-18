//
//  ImageView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/14.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
//            Image(systemName: "cloud.heavyrain.fill")
//                .frame(width: 200, height: 200)
//                .background(
//                    LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
//                )
//
//            Circle()
//                .trim(from: 0, to: 0.5)
//                .frame(width: 200, height: 200)
            
            Button {
                print("12")
            } label: {
                Text("Welcome")
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
                    .font(.largeTitle)
            }
            
            Text("Please log in")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Color.red)
                .ignoresSafeArea()
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Text("Left")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: geometry.size.width * 0.33)
                        .background(Color.yellow)
                    Text("Right")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: geometry.size.width * 0.67)
                        .background(Color.orange)
                }
            }
            .frame(height: 50)

        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
