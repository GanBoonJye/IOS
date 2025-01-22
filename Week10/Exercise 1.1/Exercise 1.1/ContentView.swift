//
//  ContentView.swift
//  Exercise 1.1
//
//  Created by labuser on 15/01/2025.
//

import SwiftUI

struct ContentView: View {
    let artist = [Artist(name:"Gem"),Artist(name:"Elon")]
    
    var body: some View {
        List(artist) { artist in
            Text(artist.name)
        }
    }
}

#Preview {
    ContentView()
}
