//
//  ContentView.swift
//  EnvironmentSample
//
//  Created by 冨田康介 on 2021/05/05.
//

import SwiftUI
    
struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.displayScale) var displayScale
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("displayScale: ")
                Text(displayScale.description)
            }
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .padding(.leading, displayScale == 2.0 ? 10 : 50)
            HStack {
                Text("horizontalSizeClass: ")
                if horizontalSizeClass == .compact {
                    Text("Compact")
                } else {
                    Text("Regular")
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .padding()
            HStack {
                Text("verticalSizeClass: ")
                if verticalSizeClass == .compact {
                    Text("Compact")
                } else {
                    Text("Regular")
                }
            }
            .frame(maxWidth: .infinity)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
    }
}
