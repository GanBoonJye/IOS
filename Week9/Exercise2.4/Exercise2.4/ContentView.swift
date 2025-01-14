//
//  ContentView.swift
//  Exercise2.4
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var isRed = false
    var body: some View {
        VStack{
            HStack{
                Toggle("",isOn: $isRed)
                    .frame(width: 0)
            }
            if isRed == true{
                
            }
            else{
                
            }
        }
    }
}

#Preview {
    ContentView()
}
