//
//  MyScrollView2.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/15.
//

import SwiftUI

struct MyScrollView2: View {
    @State var dragAmount = CGSize.zero

       var body: some View {
           VStack {
               Rectangle()
                   .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                   .frame(width: 200, height: 150)
                   .clipShape(RoundedRectangle(cornerRadius: 20))
                   .rotation3DEffect(.degrees(-Double(dragAmount.width) / 20), axis: (x: 0, y: 1, z: 0))
                   .rotation3DEffect(.degrees(Double(dragAmount.height / 20)), axis: (x: 1, y: 0, z: 0))
                   .offset(dragAmount)
                   .gesture(
                       DragGesture()
                           .onChanged { dragAmount = $0.translation }
                           .onEnded { _ in
                               withAnimation(.spring()) {
                                   dragAmount = .zero
                               }
                           }
                   )
           }
           .frame(width: 400, height: 400)
       }
}

struct MyScrollView2_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView2()
    }
}
