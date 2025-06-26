//
//  PokemonView.swift
//  2025-SwiftUI-Lesson-6
//
//  Created by Stanley Sim on 26/6/25.
//

import SwiftUI

struct PokemonView: View {
    var selectedRow: Int
    var pokemon: PokemonModel
    
    var body: some View {
        let type = pokemon.types[selectedRow]
        let image = pokemon.images[selectedRow]
        
        Image("\(image)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        Text("Type: \(type)")
            .padding()
        Text(pokemon.details[selectedRow])
            .padding()
    }
}

#Preview {
    PokemonView(selectedRow: 0, pokemon: PokemonModel())
}
