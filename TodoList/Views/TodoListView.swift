//
//  TodoListView.swift
//  TodoList
//
//  Created by GengYu Zhang on 2024-05-21.
//

import SwiftUI

struct TodoListView: View {
    
    // Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                List {
                    
                    Itemview(
                        title: "Study for Chemistry quiz",
                        done: false
                    )
                    
                    Itemview(
                        title: "Finish Computer Science assignment",
                        done: true
                    )
                    
                    Itemview(
                        title: "Go for a run around",
                        done: false
                    )
                    
                }
                .searchable(
                    text:$searchText
                )
                
                HStack {
                    TextField("Enter a to-do item", text:
                    $newItemDescription
                    )
                    
                    Button("ADD") {
                        // Add the new to-do item
                    }
                    .font(.caption)
                    
                }
            .padding(20)
                
            }
            .navigationTitle("To do")
            
        }
    }
}

#Preview {
    TodoListView()
}

struct Itemview: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(
                    title
                )
            },
            icon: {
                Image(
                    systemName: done == true ? "checkmark.circle" : "circle"
                )
            }
        )
    }
}
