//
//  SecondView.swift
//  StackSample
//
//  Created by 冨田康介 on 2021/04/24.
//

import SwiftUI

struct SecondView: View {
    @State var value: String = ""
    @State var isInputError = false
    var body: some View {
        VStack {
            Spacer()
            VStack {
                switch isInputError {
                case true:
                    TextField("@Stateの動作確認", text: $value)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3.0)
                                .stroke(Color.pink, lineWidth: 3.0)
                                .padding(1)
                        )
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                case false:
                    TextField("@Stateの動作確認", text: $value)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                Text(value)
                    .frame(maxWidth: .infinity, minHeight: 25)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .background(Color.init(.lightGray))
                    .cornerRadius(3.0)
                    .padding([.horizontal, .bottom], 12)
            }
            .background(Color.orange)
            .cornerRadius(10.0)
            .padding()
            Spacer()
            Button("状態切り替え", action: {
                self.isInputError.toggle()
            })
            .padding()
            .foregroundColor(.white)
            .background(Color.init(.link))
            .cornerRadius(10.0)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
