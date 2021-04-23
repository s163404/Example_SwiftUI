//
//  Item.swift
//  Example_SwiftUI
//
//  Created by 冨田康介 on 2021/04/11.
//

import Foundation

// セルアイテムのデータ
struct Item: Identifiable {
    var id: Int
    var isFavorite: Bool
    var text: String
}
