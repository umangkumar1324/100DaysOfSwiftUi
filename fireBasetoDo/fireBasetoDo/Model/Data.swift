//
//  Data.swift
//  fireBasetoDo
//
//  Created by Umang Kumar on 9/3/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import Foundation


struct Task: Identifiable{
    var title: String
    var completed: Bool
    var id: String = UUID().uuidString
}

#if DEBUG

let testDataTask = [
Task(title: "Get the UI going", completed: true),
Task(title: "Set up firebase", completed: false),
Task(title: "???", completed: true),
Task(title: "PROFIT!!!!" , completed: true)

]

#endif
