//
//  MyLinkView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/18.
//

import SwiftUI

struct MyLinkView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack(alignment: .leading) {
            Link("Learn SwiftUI", destination: URL(string: "https://www.apple.com")!)
                .font(.title)
                .foregroundColor(.red)
                
            Link(destination: URL(string: "https://www.apple.com")!) {
                Image(systemName: "link.circle.fill")
                    .font(.largeTitle)
            }
            
            Button("Visit Apple") {
                openURL(URL(string: "https://www.apple.com")!)
            }
            Spacer()
        }
        
    }
}

struct MyLinkView_Previews: PreviewProvider {
    static var previews: some View {
        MyLinkView()
    }
}
