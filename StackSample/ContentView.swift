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
            .foregroundColor(.yellow)
            HStack {
                Text("A")
                    .padding()
                Text("B")
                    .padding()
                Text("C")
                    .padding()
            }
            .background(Color.white)
            .foregroundColor(.green)
            VStack(alignment: .center, spacing: 10) {
                Text("THE")
                    .font(.title)
                    .kerning(20)
                Text("FIRST")
                    .font(.title)
                    .tracking(20)
                    .fixedSize()
                Text("TAKE")
                    .font(.title)
                    .tracking(20)
                    .background(Color.init(.lightGray))
                Text("TAKE")
                    .kerning(20)
                    .font(.system(size: 40, weight: .regular, design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.init(.lightGray))
            }
            .padding(.horizontal, 40)
            .background(Color.white)
            .foregroundColor(.pink)
        }
        .padding()
        .background(Color(red: 74/255, green: 137/255, blue: 255/255, opacity: 255/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
