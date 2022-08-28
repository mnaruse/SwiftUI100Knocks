//
//  Fluit.swift
//  Domain
//
//  Created by 成瀬 未春 on 2022/08/28.
//

public struct Fluit: Identifiable {
    public let id: UUID
    public let text: String

    public init(id: UUID = UUID(), text: String) {
        self.id = id
        self.text = text
    }
}
