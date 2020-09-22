//
//  ContentView.swift
//  weSplit
//
//  Created by Umang Kumar on 9/2/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var bill = ""
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Amount of the bill", text: $bill)
                    Text("")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
