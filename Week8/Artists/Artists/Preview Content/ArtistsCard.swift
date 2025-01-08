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
                        Text("\n\n\n\n\n")
                        Text("View")
                            .background(.white)
                            .padding(.all)
                    }

                }

                
            }
        }.frame(height: 200)
            .padding()
        
    }
}

#Preview {
    ArtistsCard(name: ("邓紫棋"), color: "gem", image: "gem")
}
