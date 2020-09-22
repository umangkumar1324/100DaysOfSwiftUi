//
//  ContentView.swift
//  practice1
//
//  Created by Umang Kumar on 9/21/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(
                destination: newVIew()){
                Text("Go to new view!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
