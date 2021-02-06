//
//  ToDoListManager.swift
//  Test (iOS)
//
//  Created by Mac on 7/2/21.
//

import Foundation

class PlantListManager: ObservableObject {
    @Published var items : [Item] = [
        Item(id: UUID(), name: "First"),
        Item(id: UUID(), name: "Second"),
        Item(id: UUID(), name: "Third")
    ]
    
    init() {
        // Load data into Items array from Core data and override the current defaults
    }
    
    func moveItem(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        items.append(Item(id: UUID(), name: "New"))
    }
    
    func deleteItem(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
}
