//
//  task.swift
//  To-Do List
//
//  Created by Umang Kumar on 7/29/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import Foundation

struct Task{
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTask = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "?????", completed: false),
    Task(title: "Profit!!!!   ", completed: false),


]
#endif
