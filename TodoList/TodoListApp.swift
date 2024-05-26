//
//  TodoListApp.swift
//  TodoList
//
//  Created by GengYu Zhang on 2024-05-21.
//

import SwiftData
import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
