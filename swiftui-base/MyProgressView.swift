//
//  MyProgressView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/18.
//

import SwiftUI

struct MyProgressView: View {
    
    @State private var downloadAmount: Double = 0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ProgressView("Downloading…", value: downloadAmount, total: 100)
        }
        .onReceive(timer) { _ in
            if downloadAmount < 100 {
                downloadAmount += 2
            }
        }
    }
}

struct MyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressView()
    }
}
