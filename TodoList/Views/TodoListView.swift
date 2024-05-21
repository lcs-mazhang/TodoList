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
                    
                    Label(
                    title: {
                        Text("study for Chemistry quiz")
                    }, icon: {
                        Image(systemName: "circle")
                    }
                )
                    
                    Label(
                     title: {
                         Text("Finish Computer Science assignment")
                     }, icon: {
                         Image(systemName: "circle")
                     }
                 )
                    
                    Label(
                     title: {
                         Text("Go for a run around campus")
                     }, icon: {
                         Image(systemName: "circle")
                     }
                 )
                
                }
                .searchable(text:$searchText)
                
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
