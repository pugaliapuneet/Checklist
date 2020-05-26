//
//  TodoList.swift
//  Checklist
//
//  Created by Puneet Pugalia on 25/05/20.
//  Copyright © 2020 Puneet Pugalia. All rights reserved.
//

import Foundation

class TodoList {
    
    var todos: [ChecklistItem] = []
    
    init() {
        let row0item = ChecklistItem()
        let row1item = ChecklistItem()
        let row2item = ChecklistItem()
        let row3item = ChecklistItem()
        let row4item = ChecklistItem()
        
        row0item.text = "Take a jog"
        row1item.text = "Watch a movie"
        row2item.text = "Code an app"
        row3item.text = "Walk the dog"
        row4item.text = "Study design patterns"
        
        todos.append(row0item)
        todos.append(row1item)
        todos.append(row2item)
        todos.append(row3item)
        todos.append(row4item)
    }
    
    func newTodo() -> ChecklistItem {
        let item = ChecklistItem()
        item.text = randomTitle()
        item.checked = true
        todos.append(item)
        return item
    }
    
    private func randomTitle() -> String {
        let titles = ["New todo item", "Generic Todo", "Fill me out", "I need something to do", "Much todo about nothing"]
        
        let randomNumber = Int.random(in: 0 ... titles.count - 1)
        return titles[randomNumber]
    }
}
