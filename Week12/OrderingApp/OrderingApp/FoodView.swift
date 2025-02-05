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
        item.type == "Drink"
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
        let sampleDrinks: [(name: String, price: Double)] = [
            ("AlohaChickenLARGE",47.90),
            ("BeefPepperoniLARGE",47.90),
            ("ChickenPepperoniLARGE",47.90),
            ("DeluxeCheeseLARGE",47.90),
            ("VeggieLoverLARGE",47.90),
            ("HawaiianChickenLARGE",47.90),
            ("IslandTunaLARGE",47.90),
            ("SalamiOlioSpaghetti",17.50),
            ("CreamyTomYumTunaSpaghetti",17.50)
        ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}

