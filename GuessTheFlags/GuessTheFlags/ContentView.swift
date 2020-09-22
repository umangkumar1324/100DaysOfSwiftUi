//
//  ContentView.swift
//  GuessTheFlags
//
//  Created by Umang Kumar on 9/2/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia","France","Germany","Ireland","Italy","Nigeria","Poland", "Russia", "Spain","UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var counter = 0
    @State private var scoreScore = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20){
                VStack{
                    Text("Tap the flag of").foregroundColor(.white)
                    Text(countries[correctAnswer]).foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                ForEach(0..<3){
                    number in
                    Button(action: {
                        self.flaggedTappped(number)
                        self.askQuestion()
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                        .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black,radius: 2)
                    }
                    Spacer()
                }
                Text("Total Score: \(counter)")
                    .foregroundColor(.white)
            }
            
        }.alert(isPresented: $scoreScore) {
            Alert(title: Text(scoreTitle), message: Text("Your Score is \(counter)"), dismissButton: .default(Text("Continue")){
                self.askQuestion()
                })
        }
    }
    func flaggedTappped(_ number:Int) {
        if number==correctAnswer{
            scoreTitle = "Correct"
            
             counter += 1
        }
            
            
        else{
            scoreTitle = "Wrong! Thats the flag of \(countries[number])"
            
        }
        scoreScore = true
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
