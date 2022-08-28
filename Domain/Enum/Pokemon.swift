//
//  Pokemon.swift
//  Domain
//
//  Created by 成瀬 未春 on 2022/08/28.
//

enum Pokemon: String, CaseIterable, Identifiable {
    case pikachu
    case bulbasaur
    case charmander
    case squirtle

    var id: Self {
        self
    }

    var name: String {
        rawValue.uppercased()
    }
}
