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
                    
                    Text("Study for Chemistry quiz")
                    Text("Finish Computer Science assignent")
                    Text("Go for a run around campus")
                    
                }
                .searchable(text:$searchText)
                
                HStack {
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
