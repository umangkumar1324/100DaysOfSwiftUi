//
//  ContentView.swift
//  multiplicationTables
//
//  Created by Umang Kumar on 9/14/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//game for kids to learn their multiplication tables
//ask the kids which time table they would like to use
//user picks amount of questions they want, store amount they got right in a counter and then at the end they see how amny they got right

import SwiftUI

struct ContentView: View {
    @State private var numPicked = 0
    @State private var amountOfNum = 0
    @State private var isSetting = false
    
    var amountOfNUMS = ["5","10","15", "all"]
    
    var body: some View {
        NavigationView{
            Form{
                VStack(spacing: 20){
                    Picker("Study table #", selection: $numPicked){
                        ForEach((1..<12)){
                            Text("\($0)")
                        }
                    }
                    
                    
                    Picker("How many questions?", selection: $amountOfNum){
                        ForEach((0..<amountOfNUMS.count)){
                            Text("\(self.amountOfNUMS[$0])")
                        }
                    }
                    
                    HStack{
                       Spacer()
                       NavigationLink(destination: SecondView()) {
                        Text("Awesome Button")
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .font(.title)
                        Spacer()
                    }
                    
                }
                
            }.navigationBarTitle("Setup Menu")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
