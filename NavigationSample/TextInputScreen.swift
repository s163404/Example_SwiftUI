//
//  TextInputScreen.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/05/21.
//

import SwiftUI

struct TextInputScreen: View {
    @State var text: String = ""
    @State var fieldState = false
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("なにか入力せえ", text: $text)
                .textFieldStyle(CustomTextFieldStyle(isError: $fieldState))
            Button(fieldState ? "オン" : "オフ") {
                fieldState.toggle()
            }
            .padding()
            .background(Color.yellow)
            .cornerRadius(10.0)
        }
        .padding()
        .background(Color(UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)))
    }
}

struct TextInputScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextInputScreen()
    }
}
