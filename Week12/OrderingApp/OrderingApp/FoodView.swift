//
//  FoodView.swift
//  OrderingApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(foodItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if foodItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleFoods: [(image: String,name: String, price: Double)] = [
            ("Aloha Chicken","Aloha Chicken LARGE",47.90),
            ("Triple Chicken","Triple Chicken LARGE",52.30),
            ("Beef Pepperoni","Beef Pepperoni LARGE",47.90),
            ("Chicken Delight","Chicken Delight LARGE",47.90),
            ("Chicken Sensation","Chicken Sensation LARGE",47.90),
            ("Chicken Pepperoni","Chicken Pepperoni LARGE",47.90),
            ("Deluxe Cheese","Deluxe Cheese LARGE",47.90),
            ("Hawaiian Chicken","Hawaiian Chicken LARGE",47.90),
            ("Island Tuna","Island Tuna",47.90),
            ("Veggie Lover","Veggie Lover LARGA",47.90)
            
            
        ]

        for food in sampleFoods {
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price,image: food.image)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}

