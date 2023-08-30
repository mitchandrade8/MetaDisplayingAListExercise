//
//  ContentView.swift
//  MetaDisplayingAListExercise
//
//  Created by Mitch Andrade on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
       return [
        Item(name: "Lasagna"),
        Item(name: "Fettuccini Alfredo"),
        Item(name: "Spaghetti"),
        Item(name: "Avocado Toast"),
        Item(name: "Tortellini"),
        Item(name: "Pizza")
       ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
