//
//  ContentView.swift
//  Example_SwiftUI
//
//  Created by 冨田康介 on 2020/12/23.
//

import SwiftUI

struct ContentView: View {
    var items: [Item] = []
    @State private var isOnlyFavorite: Bool = false

    var body: some View {
        VStack {
            Text("Hello, SwiftUI!!!")
                .font(.largeTitle)
                .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("ボタン")
            }.padding()
            List {
                Text("SwiftUI Programming")
                Image(systemName: "sun.max")
                HStack {
                    Image(systemName: "moon.stars")
                    Text("moonstars")
                }
                VStack {
                    Text("line 1")
                        .background(Color.pink)
                    Text("line 2")
                        .padding()
                        .background(Color.blue)
                    Text("line 3")
                        .background(Color.green)
                        .padding()
                }
            }
            VStack {
                Toggle(isOn: $isOnlyFavorite) {
                    Text("Only Favorite")
                }
                .padding()
                List {
                    ForEach(items) { item in
                        if(!self.isOnlyFavorite || item.isFavorite) {
                            ListItemView(item: item)
                        }
                    }
                }
            }
        }
    }
}


// セルアイテムView
struct ListItemView: View {
    var item: Item
    
    var body: some View {
        HStack {
            Text(item.text)
            if (item.isFavorite) {
                Image(systemName: "star")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Item(id: 1, isFavorite: true, text: "碇シンジ"),
            Item(id: 2, isFavorite: false, text: "葛城ミサト"),
            Item(id: 3, isFavorite: true, text: "綾波レイ"),
        ])
    }
}
