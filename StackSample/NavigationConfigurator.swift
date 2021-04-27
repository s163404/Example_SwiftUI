//
//  NavigationConfigurator.swift
//  StackSample
//
//  Created by 冨田康介 on 2021/04/27.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        DispatchQueue.main.async {
            if let nc = uiViewController.navigationController {
                self.configure(nc)
            }
        }
        
    }
}
