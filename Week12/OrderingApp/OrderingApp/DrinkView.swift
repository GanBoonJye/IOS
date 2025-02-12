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
        let sampleDrinks: [(image: String,name: String, price: Double)] = [
            ("Cola","Cola", 4.0),
            ("Sprite","Sprite",3.0),
            ("100 plus","100 plus",3.0),
            ("Vida","Vida",5.0),
            ("Lemon Tea","Lemon Tea",4.0),
            ("Pepsi","Pepsi",3.5),
            ("Soya","Soya",3.5),
            ("Milk","Milk",5.0),
            ("Red Bull","Red Bull",10),
            ("HoneyB","Honey B", 3.5)
            
            ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price,image: drink.image)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}

