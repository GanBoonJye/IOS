//
//  ContentView.swift
//  Artists
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName:"bell")
                    .font(.largeTitle)
                Image(systemName:"person")
                    .font(.largeTitle)
            }
            HStack{
                Text("Store")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                Spacer()
            }
            ScrollView{
                ArtistsCard(name: ("邓紫棋"), color: "gem", image: "gem")
                ArtistsCard(name: ("蜡笔小新"), color: "lbxx", image: "lbxx")
                ArtistsCard(name: ("徐必成"), color: "yn", image: "yn")
                ArtistsCard(name: ("马斯克"), color: "elon", image: "elon")
            }
            
            

        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
