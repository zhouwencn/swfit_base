//
//  SageAreaView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/14.
//

import SwiftUI

struct SageAreaView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 200, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
                .background(Color.red)
                .ignoresSafeArea()
            HStack {
                Text("The rain Spain falls mainly on the Spaniards.")
                Text("Knowledge is power, France is bacon.")
                    .layoutPriority(1)
            }
            .font(.largeTitle)
        }
    }
}

struct SageAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SageAreaView()
    }
}
