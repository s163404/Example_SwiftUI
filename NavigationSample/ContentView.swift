//
//  ContentView.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/04/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // NavigationViewはコンテナビュー
        // ナビゲーションスタックの階層最上位のViewにNavigationViewをつける
        NavigationView {
            VStack {
                Text("Hello! World")
                    .padding()
                // ナビゲーション構造の下にビューを追加し、
                // そのビューに遷移するボタンを作成。
                NavigationLink(
                    destination: MySubView(prefix: "A", index: 0, childCount: 2)) {
                    Text("サブビューへ")
                }
                .padding()
                NavigationLink(
                    destination: MySubView(prefix: "山梨", index: 0, childCount: 3)) {
                    Text("山梨")
                }
                .padding()
                NavigationLink(
                    destination: MySubView(prefix: "湯本", index: 0, childCount: 5)) {
                    Text("福島県いわき市")
                }
            }
            .navigationBarTitle("ホーム", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
