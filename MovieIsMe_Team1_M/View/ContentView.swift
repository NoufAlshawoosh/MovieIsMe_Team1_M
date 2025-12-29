//
//  ContentView.swift
//  MovieIsMe_Team1_M
//
//  Created by Nouf Alshawoosh on 23/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink(value: "hello"){
                Text("Go")
            }.navigationDestination(for: String.self) { value in
                Text("value is \(value)")
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
