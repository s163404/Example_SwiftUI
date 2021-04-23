//
//  ContentView.swift
//  StackSample
//
//  Created by 冨田康介 on 2021/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack {
                Text("A")
                    .padding()
                Text("B")
                    .padding()
                Text("C")
                    .padding()
            }
            .background(Color.white)
            HStack {
                Text("A")
                    .padding()
                Text("B")
                    .padding()
                Text("C")
                    .padding()
            }
            .background(Color.white)
            VStack(alignment: .center, spacing: 10) {
                Text("THE")
                    .kerning(10)
                Text("FIRST")
                    .kerning(10)
                    .fixedSize()
                Text("TAKE")
                    .kerning(10)
            }
            .padding(.horizontal, 40)
            .background(Color.white)
            .foregroundColor(.pink)
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.yellow)
        .frame(width: 200, height: 200, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
