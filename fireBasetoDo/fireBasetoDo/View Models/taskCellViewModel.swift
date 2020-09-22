//
//  taskCellViewModel.swift
//  fireBasetoDo
//
//  Created by Umang Kumar on 9/3/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//
import Combine
import Foundation

class taskCellViewModel: ObservableObject, Identifiable{
    @Published var task:Task
    var id: String = ""
    @Published var completedStateIconName = ""
    private var cancellables = Set<AnyCancellable>()
    
    init(task: Task){
        self.task = task
        $task
            .map{task in
                task.completed ? "checkmark.circle.fill" : "circle"
        }
        .assign(to: \.completedStateIconName, on: self)
        .store(in: &cancellables)
        
        $task
            .map{task in
                task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
        
    }
    
}
