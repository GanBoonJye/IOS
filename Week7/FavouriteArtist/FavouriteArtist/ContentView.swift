//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
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
            ZStack {
                Color("lbxx")
                    .cornerRadius(20)
                HStack{
                    Text("蜡笔小新")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image("lbxx")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                }
                   
            }
            
            ZStack{
               Color("gem")
                    .cornerRadius(20)
                HStack{
                    Text("邓紫棋")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image("gem")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                }
                
            }
            ZStack{
                Color("yn")
                    .cornerRadius(20)
                HStack{
                    Text("徐必成")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image("yn")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                }
               
            }
            ZStack{
                Color("elon")
                    .cornerRadius(20)
                HStack{
                    Text("马斯克")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image("elon")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
