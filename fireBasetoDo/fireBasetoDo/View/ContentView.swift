//
//  ContentView.swift
//  fireBasetoDo
//
//  Created by Umang Kumar on 9/3/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let tasks = testDataTask
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List(tasks){task in
                    TaskCell(task:task)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width:20, height:20)
                        Text("Add new Task")
                    }
                }
            }.padding()
                .navigationBarTitle("Tasks")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TaskCell: View {
    let task:Task
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.circle.fill": "circle")
                .resizable()
                .frame(width:20, height:20)
            Text(task.title)
        }
    }
}
