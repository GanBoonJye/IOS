//
//  ContentView.swift
//  Exercise2.2
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var status = false
    var body: some View {
        VStack{
            HStack{
                Toggle("",isOn: $status)
                    .frame(width: 0)
            }
            if status == true {
                Image(systemName: "speaker.wave.1")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            else{
                Image(systemName: "speaker.slash")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            
            
        }
       
    }
}

#Preview {
    ContentView()
}
