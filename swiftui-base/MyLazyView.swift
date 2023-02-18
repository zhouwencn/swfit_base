//
//  MyLazyView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/15.
//

import SwiftUI

struct MyLazyView: View {
    let data = (1...100).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    }
}

struct MyLazyView_Previews: PreviewProvider {
    static var previews: some View {
        MyLazyView()
    }
}
