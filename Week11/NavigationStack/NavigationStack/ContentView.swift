//
//  ContentView.swift
//  NavigationStack
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = " "
    @State private var isSheetPresented = false
    let Asia = ["Kuala Lumpur","Tokyo","Korea"]
    let Europe = ["London","New York","Paris"]
    
 
    var body: some View {
        NavigationStack{
            List{
                Section(header:Text("Asia")) {
                    ForEach(Asia,id:\.self) { Asia in
                        NavigationLink {
                            Text("Item Detail \(Asia)")
                        }label:{
                            Text(Asia)
                        }
                    }
                }
                Section(header:Text("Europe")) {
                    ForEach(Europe,id:\.self) { Europe in
                        NavigationLink {
                            Text("Item Detail \(Europe)")
                        }label:{
                            Text(Europe)
                        }
                        
                    }
                }
                
            }
            .navigationTitle("City")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isSheetPresented = true
                    }){
                        Image(systemName: "info.circle")
                            .font(.system(size:30))
                    }
                }
            }
            .sheet(isPresented:$isSheetPresented){
                VStack{
                    Text("This app was created by GBJ")
                        .presentationDetents([.height(300),.large])
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
