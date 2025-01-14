//
//  ArtistsCard.swift
//  Artists
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ArtistsCard: View {
    var name:String
    var color:String
    var image:String
    var website:String
    var body: some View {
        VStack{
            ZStack{
                Color(color)
                    .cornerRadius(20)
                HStack{
                    Spacer()
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                }
                HStack{
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.all)
                    Spacer()
                    VStack{
                        Text("\n\n\n\n")
                        Button(action: {
                            if let url = URL(string:website){
                                UIApplication.shared.open(url)
                            }
                        }){
                            HStack{
                                Text("Visit Artist Site")
                                Image(systemName: "chevron.right")
                            }.padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                        }
                    }
                    
                    
                }
            }.frame(height: 200)
                .padding()
            
            
        }
    }
}

    #Preview {
        ArtistsCard(name: "邓紫棋", color: "gem", image: "gem",website: "https://www.instagram.com/gem0816/")
    }
