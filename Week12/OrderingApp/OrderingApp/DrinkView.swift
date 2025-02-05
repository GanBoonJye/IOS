import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Drink"
    }, sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(drinkItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if drinkItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleDrinks: [(name: String, price: Double)] = [
            ("Cola", 2.5),
            ("Sprite", 2.0),
            ("Orange Juice", 3.0),
            ("Iced Tea", 2.2),
            ("Lemonade", 2.8),
            ("Coffee", 3.5),
            ("Tea", 2.0)
        ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}

