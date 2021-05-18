//
//  LayeredImage.swift
//  NavigationSample
//
//  Created by 冨田康介 on 2021/05/19.
//

import SwiftUI
import Combine

public class ScreenState: ObservableObject {
    @Published var imageName = "gamecontroller.fill"
    
    func toggle() {
        imageName = (imageName == "gamecontroller.fill" ? "gamecontroller"  : "gamecontroller.fill")
    }
}

struct LayeredImage: View {
    @EnvironmentObject var screenState: ScreenState
    var body: some View {
        Image(systemName: screenState.imageName)
    }
}

struct LayeredImage_Previews: PreviewProvider {
    static var previews: some View {
        LayeredImage()
            .environmentObject(ScreenState())
    }
}
