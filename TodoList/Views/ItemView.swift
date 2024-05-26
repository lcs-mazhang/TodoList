//
//  ItemView.swift
//  TodoList
//
//  Created by GengYu Zhang on 2024-05-21.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis:
                        .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

//#Preview {
//    List{
//        ItemView(currentItem: Binding.constant(firstItem))
//    }
//}
