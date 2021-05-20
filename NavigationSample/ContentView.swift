//
//  ContentView.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/04/13.
//

import SwiftUI

struct ContentView: View {
    let navigationBarHeight: CGFloat = 44
    
    @State var toTransition = false
    
    var body: some View {
        // NavigationViewはコンテナビュー
        // ナビゲーションスタックの階層最上位のViewにNavigationViewをつける
        ZStack(alignment: .top) {
            NavigationView {
                VStack {
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
                    Button("テキストフィールドカスタム検証画面へ") { self.toTransition.toggle()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 255/255, green: 108/255, blue: 155/255))
                    .cornerRadius(10.0)
                    NavigationLink(
                        destination: TextInputScreen(),
                        isActive: $toTransition,
                        label: {
                            EmptyView()
                        })
                }
                .navigationBarTitle("ホーム", displayMode: .large)
            }
            LayeredImage()
                .padding(.top, navigationBarHeight + 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ScreenState())
    }
}
