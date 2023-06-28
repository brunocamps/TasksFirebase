//
//  Task.swift
//  TasksFirebase
//
//  Created by Bruno Campos on 6/27/23.
//

import Foundation

enum TaskPriority {
    case high
    case medium
    case low
}

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var priority: TaskPriority
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
  Task(title: "Implement UI", priority: .medium, completed: false),
  Task(title: "Connect to Firebase", priority: .medium, completed: false),
  Task(title: "????", priority: .high, completed: false),
  Task(title: "PROFIT!!!", priority: .high, completed: false)
]
#endif
