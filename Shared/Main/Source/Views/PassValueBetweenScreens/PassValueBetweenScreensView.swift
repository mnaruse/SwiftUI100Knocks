//
//  PassValueBetweenScreensView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/08/28.
//

import Domain
import SwiftUI

struct PassValueBetweenScreensView: View {
    private let fluits: [Fluit] = [
        Fluit(text: "Apple"),
        Fluit(text: "Banana"),
        Fluit(text: "Orange"),
        Fluit(text: "Grape"),
        Fluit(text: "Peach"),
    ]

    var body: some View {
        List {
            ForEach(fluits) { fluit in
                NavigationLink(fluit.text, destination: PassValueBetweenScreensDetailView(text: fluit.text))
            }
        }
    }
}

struct PassValueBetweenScreensView_Previews: PreviewProvider {
    static var previews: some View {
        PassValueBetweenScreensView()
    }
}
