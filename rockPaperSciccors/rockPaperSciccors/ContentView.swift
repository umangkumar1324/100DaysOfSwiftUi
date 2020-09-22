//
//  ContentView.swift
//  rockPaperSciccors
//
//  Created by Umang Kumar on 9/3/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.





import SwiftUI

struct ContentView: View {
  
    let options = ["Rock","Paper","Scissors"]
    //false = lose and  true = win
    @State private var winOrLose = Bool.random()
    @State private var optionChoice = Int.random(in: 0...2)
    @State private var counter = 0
    @State private var userScore = 1
    @State private var showingAlert = false



    
    
    var body: some View {
        VStack{
        Text("Computer's Choice: \(options[optionChoice])")
            if winOrLose == true{
                Text("Win")
            }
            else{
                Text("Lose")
            }
        }
        
        //Each turn the game will randomly pick rock, paper, scissors
        //Each turn the app will either prompt player to win or lose
        // the player must tap the correct move: win or lose
        //If they are correct, they score a point
        // The game ends after 10 questions
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




