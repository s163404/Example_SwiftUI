//
//  MySubView.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/04/13.
//

import SwiftUI

struct MySubView: View {
    var  prefix: String
    var index: Int
    var childCount: Int
    var displayText: String {
        "\(prefix)(\(index))"
    }
    
    var body: some View {
        VStack {
            Text(displayText)
                .font(.largeTitle)
            
            if (index + 1) < childCount {
                NavigationLink(
                    destination: MySubView(prefix: prefix, index: index + 1, childCount: childCount),
                    label: {
                        Text("Go to child")
                    }).padding()
                Toggle(isOn: .constant(true), label: {
                    Text("ラベル")
                }).padding()
            }
        }
        .navigationBarTitle("\(displayText)", displayMode: .inline)
    }
}

struct MySubView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MySubView(prefix: "A", index: 0, childCount: 2)
        }
    }
}
