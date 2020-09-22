//
//  ContentView.swift
//  overlay
//
//  Created by Umang Kumar on 9/17/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var textColor = Color.blue
    @State var showOverlay = false
    var body: some View {
        Text("Hello, World!")
            .frame(width:100, height: 100)
            .background(textColor)
            .onTapGesture {
                self.showOverlay.toggle()
            }
            .overlay(
                VStack{
                    if self.showOverlay{
                    Circle()
                        .stroke(Color.red, lineWidth: 30)
                        .frame(width:300, height: 300)
                        .onTapGesture{self.textColor = Color.red}}
                    else{
                            EmptyView()
                        }
                      }
                    )
                        
            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
