//
//  ContentView.swift
//  ChallengeOne
//
//  Created by Umang Kumar on 9/2/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//create an app that does temprature conversion from Celcius/Fahrenheight/Kelvin

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = ""
    @State private var outputUnit = 1
    
    let units = ["Celsius", "Fahrenheit", "Kelvin"]

    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Choose your unit.")){
                    Picker($inputNum) {
                        ForEach(0..<units.count){
                            Text(
                        }
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
