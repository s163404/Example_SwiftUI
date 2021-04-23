//
//  ContentView2.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/04/18.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: MySubView2()) {
                Text("Go to SubView2")
            }
            .navigationBarTitle("Home")
            .navigationBarItems(trailing: Button(action: {}) {
                Text("trailing")
            })
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
