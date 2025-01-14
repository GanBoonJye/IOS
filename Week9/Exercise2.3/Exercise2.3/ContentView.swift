//
//  ContentView.swift
//  Exercise2.3
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = " "
    var body: some View {
        VStack {
            TextField("Requiment", text: $name)
                .padding()
                .keyboardType(.decimalPad)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            if name.count >= 5{
                Text("Valid")
                    .foregroundColor(.green)
            }
            else{
                if name.count != 0 {
                    Text("Too Short")
                        .foregroundColor(.red)
                }
            }
        }
       
    }
}

#Preview {
    ContentView()
}
