//
//  TaskListViewModel.swift
//  TasksFirebase
//
//  Created by Bruno Campos on 6/28/23.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject { // (1)
  @Published var taskCellViewModels = [TaskCellViewModel]() // (3)

  private var cancellables = Set<AnyCancellable>()

  init() {
    self.taskCellViewModels = testDataTasks.map { task in // (2)
      TaskCellViewModel(task: task)
    }
  }

  func removeTasks(atOffsets indexSet: IndexSet) { // (4)
    taskCellViewModels.remove(atOffsets: indexSet)
  }

  func addTask(task: Task) { // (5)
    taskCellViewModels.append(TaskCellViewModel(task: task))
  }
}
