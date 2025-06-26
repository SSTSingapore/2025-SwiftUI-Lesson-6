//
//  ContentView.swift
//  2025-SwiftUI-Lesson-6
//
//  Created by Stanley Sim on 26/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedRow: Int = 0
    @State private var pokemon = PokemonModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Pick a Pokemon").font(.headline)
                Picker("Pokemon", selection: $selectedRow) {
                    ForEach(0..<pokemon.names.count, id: \.self) { index in
                        Text(pokemon.names[index]).tag(index)
                    }
                }.pickerStyle(.wheel)
                
                Spacer()
                
                Text("Type: \(pokemon.types[selectedRow])")
                
                Spacer()
                
                NavigationLink("More info about \(pokemon.names[selectedRow])") {
                    PokemonView(selectedRow: selectedRow, pokemon: pokemon)
                        .navigationTitle(pokemon.names[selectedRow])
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
