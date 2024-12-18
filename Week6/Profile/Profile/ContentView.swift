//
//  ContentView.swift
//  Profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("Back")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("ganboonjye")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode:.fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width:  200.0 ,height: 200.0)
                Text("GanBoonJye")
                    .font(.largeTitle)
                    .bold()
                Text("IOS Developer")
                    .font(.title)
                Text("Hi,My name is Gan Boon Jye 17 years old. I like to play games")
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                    HStack{
                        Image("ig")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding(.all)
                        Image("fb")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding(.all)
                        Image("in")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding(.all)
                        Image("youtube")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding(.all)
            
                }
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
