//
//  ContentView.swift
//  makeCalc
//
//  Created by Umang Kumar on 8/5/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

//make a calculator app that shows us based on how many people there are and how much tip you want to include
import SwiftUI

struct ContentView: View {
    @State private var totalAmount = ""
    @State private var tipChooser = 2
    @State private var amountOfPeople = 2
    
    let tipAmount = [0,10,15,20,25]
    
    var amountPerPerson : Double {
        let bill = Double(totalAmount) ?? 0
        let tipPercent = Double(tipAmount[tipChooser])
        let people = Double(amountOfPeople)
        
        let tip = (bill * tipPercent)/100
        let totalBill = bill + tip
        let end = totalBill / people
        return end
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Bill Amount", text: $totalAmount)
                    Picker("Number of People", selection: $amountOfPeople){
                    ForEach(0 ..< 100){
                        Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("Tip amount")){
                    Picker("Tip Amount",selection: $tipChooser){
                        ForEach(0 ..< tipAmount.count){
                            Text("\(self.tipAmount[$0])%")
                        }
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Section{
                    Text("Amount per Person: \(amountPerPerson)")
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
