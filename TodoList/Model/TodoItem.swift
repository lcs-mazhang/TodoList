//
//  TodoItem.swift
//  TodoList
//
//  Created by GengYu Zhang on 2024-05-21.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "Study for Chemisty quiz", done: false)

let secondItem = TodoItem(title: "Finsih Computer Science assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run around campus", done: false)


let exampleItems = [

    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
