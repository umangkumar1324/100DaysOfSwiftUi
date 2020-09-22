
//
//  AddView.swift
//  iExpense
//
//  Created by Umang Kumar on 9/14/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    static let types = ["Business", "Personal"]

    var body: some View {
        NavigationView{
            Form{
                TextField("Name:", text: $name)
                
                Picker("Type", selection: $type){
                    ForEach(Self.types, id: \.self){
                        Text($0)
                    }
                }
                TextField("Amount", text: $amount)
                .keyboardType(.numberPad)
            }.navigationBarTitle("Add New Expense")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

