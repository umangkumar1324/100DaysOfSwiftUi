//
//  ContentView.swift
//  iExpense
//
//  Created by Umang Kumar on 9/14/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI
struct expenseItem: Identifiable{
    let name: String
    let type: String
    let amount: Int
    let id = UUID()
}

class Expenses: ObservableObject{
    @Published var items = [expenseItem]()
}

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(expenses.items){item in
                    Text(item.name)
                }.onDelete(perform: removeItems)
            }.navigationBarTitle("iExpense")
            .navigationBarItems(trailing:
                Button(action:{
                    let expense = expenseItem(name: "Test", type: "Personal", amount:5)
                    self.expenses.items.append(expense)
                }){
                    Image(systemName: "plus")
                }
            )
        }
        
    }
    func removeItems(at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
