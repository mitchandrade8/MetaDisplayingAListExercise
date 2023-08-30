//
//  ContentView.swift
//  MetaDisplayingAListExercise
//
//  Created by Mitch Andrade on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct Item: Identifiable {
    let name: String
    var id = UUID()
    
}

class Model: ObservableObject {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
