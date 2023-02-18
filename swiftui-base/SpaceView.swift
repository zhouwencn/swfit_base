//
//  SpaceView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/15.
//

import SwiftUI

struct SpaceView: View {
    var body: some View {
        VStack {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer(minLength: 0)
                Text("Right")
            }
            
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(minWidth: 50, maxWidth: .infinity)
                Text("Right")
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                    .zIndex(1)
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
        }
    }
}

struct SpaceView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceView()
    }
}
