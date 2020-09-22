//
//  ContentView.swift
//  doItOnOwm
//
//  Created by Umang Kumar on 8/6/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//Design an app that calculates the amount each person has to apy per bill(add the tip)

import SwiftUI

struct ContentView: View {
    @State private var billAmount = ""
    @State private var perIndex = 2
    @State private var amountOfPeople = 2
    
    let percents = [0,10,15,20,25]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Bill Amount", text:$billAmount)
                    Picker("Number of people", selection: $amountOfPeople){
                        ForEach(0 ..< 100){
                            Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("Tip Amount")){
                    Picker("Tip Amount", selection: $perIndex){
                        ForEach(0 ..< percents.count){
                            Text("\(self.percents[$0])")
                            }
                        }
                    }.pickerStyle(SegmentedPickerStyle)
                }
            }.navigationBarTitle("WeSplit")
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
