//
//  ContentView.swift
//  cupcakeCorner
//
//  Created by Umang Kumar on 9/15/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct Response: Codable{
    var results: [Result]
}

struct Result:Codable{
    var trackID: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    @State var results = [Result]()
    var body: some View {
        List(results, id: \.trackID){item in
            VStack(alignment: .leading){
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }.onAppear(perform: loadData)
        
    }
    func loadData(){
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song")else{
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){data, response, error in
            if let data = data{
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data){
                    DispatchQueue.main.async {
                        do {
                            self.results = decodedResponse.results
                        }
                        return
                    }
                }
            }
            print("Fetch failed: \(error?.localizedDescription)")
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func loadData(){
    
}
