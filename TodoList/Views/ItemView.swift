//
//  ItemView.swift
//  TodoList
//
//  Created by GengYu Zhang on 2024-05-21.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
    }
}
