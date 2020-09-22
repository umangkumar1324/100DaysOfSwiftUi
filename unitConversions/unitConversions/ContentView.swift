//
//  ContentView.swift
//  unitConversions
//
//  Created by Umang Kumar on 9/22/20.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numOfPeople = 1
    @State private var tipPercentage = 2
    
    let tips = [0,5,10,15,20]
    
    var totalPerPerson:Double{
        let peopleCOunt = Double(numOfPeople)
        let tipPercent = Double(tips[tipPercentage])
        let checkTotal = Double(checkAmount) ?? 0
        
        let first = (checkTotal * tipPercent)/100
        let second = checkTotal + first
        let third = second/peopleCOunt
        
        return third
    }
    
    var body: some View {
        NavigationView{
            
            Form{
                Section{
                    TextField("Amount of check", text: $checkAmount)
                        .keyboardType(.numberPad)
                    Picker("Amount of People:", selection: $numOfPeople){
                        ForEach(0..<100){
                            Text("\($0)")
                        }
                    }
                }
                Section{
                    Picker("Tip Amount", selection: $tipPercentage) {
                        ForEach(0..<tips.count){
                            Text("\(self.tips[$0])%")
                        }
                        
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("$\(totalPerPerson)")
                }
            }.navigationBarTitle("WeSplit")
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
