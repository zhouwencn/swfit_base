//
//  MyHsplitView.swift
//  swiftui-base
//
//  Created by zhouwen on 2023/2/15.
//

import SwiftUI

struct MyHsplitView: View {
    var body: some View {
//        Button {
//            print("Button pressed")
//        } label: {
//            Text("Press Me")
//                .padding(20)
//        }
//        .contentShape(Rectangle())
       // .buttonStyle(PlainButtonStyle())
        NavigationView {
            NavigationLink(destination: Text("Detail view here")) {
                Image(systemName: "square.and.arrow.up.fill")
                    .renderingMode(.original)
            }
        }


    }
}

struct MyHsplitView_Previews: PreviewProvider {
    static var previews: some View {
        MyHsplitView()
    }
}
