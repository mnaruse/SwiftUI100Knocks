//
//  Pokemon.swift
//  Domain
//
//  Created by 成瀬 未春 on 2022/08/28.
//

public enum Pokemon: String, CaseIterable, Identifiable {
    case pikachu
    case bulbasaur
    case charmander
    case squirtle

    public var id: Self {
        self
    }

    public var name: String {
        rawValue.uppercased()
    }
}
