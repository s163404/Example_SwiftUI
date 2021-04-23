//
//  MySubView2.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/04/18.
//

import SwiftUI

struct MySubView2: View {
    var body: some View {
        Text("SubView")
            .navigationBarTitle("SubView", displayMode: .inline)
            .navigationBarItems(trailing: HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "folder.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            })
    }
}

struct MySubView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MySubView2()
        }
    }
}
