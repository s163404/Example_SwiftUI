//
//  CustomTextFieldStyle.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/05/21.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    @Binding var isError: Bool
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
        .padding(30)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(isError ? Color.red : Color.blue, lineWidth: 3)
        ).padding()
    }
}
