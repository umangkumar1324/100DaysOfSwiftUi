//
//  ContentView.swift
//  knockKnock
//
//  Created by Umang Kumar on 9/4/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisable: Bool = false
    @State var sliderValue:Double = 50.0
    @State var randomNumber = Int.random(in: 1...100)
    @State var pointsOverall: Int
    
    var body: some View {
        VStack{
            Spacer()
            Text("Put the bulleye as close as you can to: \(randomNumber)")
            Spacer()
            HStack{
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            Button(action: {
                self.alertIsVisable = true
            }){
                Text("Hit Me!")
            }.alert(isPresented: $alertIsVisable) { ()->  Alert in
                let roundedVal:Int = Int(sliderValue.rounded())
                return Alert(title: Text("Hello There!"), message: Text("The Slider value is: \(roundedVal).\n" + "You scored \(pointsForCurrentRound()) points this round"), dismissButton: .default(Text("Awesome!")))
            }
            Spacer()
            HStack{
                Button(action: {}){
                    Text("hello")
                }
                Spacer()
                Text("Score:")
                Text("\(totalPoints(pointsAwarded: pointsForCurrentRound()))")
                Spacer()
                Text("Round:")
                Text("9999")
                Spacer()
                Button(action: {}){
                    Text("Hello")
                }
            }.padding()
        }
    }
    func pointsForCurrentRound()->Int{
        let difference:Int
        let roundedValue: Int = abs(Int(sliderValue.rounded()))
        difference = randomNumber - roundedValue
        let awardedPoints:Int = 100 - difference
        
        return awardedPoints
    }
    func totalPoints(pointsAwarded:Int) -> Int{
        pointsOverall += pointsOverall
        return pointsOverall
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pointsOverall: <#Int#>).previewLayout(.fixed(width: 896, height: 414))
    }
}
