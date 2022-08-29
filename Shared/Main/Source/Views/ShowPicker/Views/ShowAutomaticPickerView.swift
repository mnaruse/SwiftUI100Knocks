//
//  ShowAutomaticPickerView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/08/29.
//

import Domain
import SwiftUI

struct ShowAutomaticPickerView: View {
    @State private var selectedPokemon: Pokemon = .pikachu

    var body: some View {
        List {
            Picker("Pokemon", selection: $selectedPokemon) {
                ForEach(Pokemon.allCases) { pokemon in
                    Text(pokemon.name).tag(pokemon)
                }
            }
        }
        .navigationTitle("automatic")
    }
}

struct ShowAutomaticPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAutomaticPickerView()
    }
}
