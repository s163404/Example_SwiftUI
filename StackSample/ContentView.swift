//
//  ContentView.swift
//  StackSample
//
//  Created by 冨田康介 on 2021/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                Divider()
                VStack {
                    Text("Don't use .appearance()!")
                        .padding()
                        .cornerRadius(10)
                        .overlay(NavigationConfigurator { nc in
                            nc.navigationBar.barTintColor = .blue
                        })
                    NavigationLink("NavigationLink", destination: SecondView())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 75/255, green: 134/255, blue: 255/255))
                        .foregroundColor(.white)
                        .navigationBarTitle("Try it!Swift", displayMode: .inline)
                    
                    Button("Button") {}
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 134/255, green: 134/255, blue: 255/255))
                        .foregroundColor(.white)
                        .padding()
                        .navigationBarTitle("Try it!Swift", displayMode: .inline)
                }
                .frame(maxWidth: .infinity)
                .background(Color.init(red: 240/255, green: 240/255, blue: 240/255))
            }
            .padding()
            .border(Color.black)
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
