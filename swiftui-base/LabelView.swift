//
//  LabelView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/12.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(TitleOnlyLabelStyle())

            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(IconOnlyLabelStyle())

            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(TitleAndIconLabelStyle())
            
            
            Label {
                Text("Paul Hudson")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 64, height: 64)
            }

        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
