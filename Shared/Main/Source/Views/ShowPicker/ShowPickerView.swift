//
//  ShowPickerView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/08/28.
//

// https://developer.apple.com/documentation/swiftui/picker

import Domain
import SwiftUI

struct ShowPickerView: View {
    @State private var selectedPokemon: Pokemon = .pikachu

    var body: some View {
        List {
            NavigationLink("automatic") {
                ShowAutomaticPickerView()
            }
            NavigationLink("inline") {
                ShowInlinePickerView()
            }
            NavigationLink("menu") {
                ShowMenuPickerView()
            }
            NavigationLink("segmented") {
                ShowSegmentedPickerView()
            }

            NavigationLink("wheel") {
                ShowWheelPickerView()
            }
        }
    }
}

struct ShowPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ShowPickerView()
    }
}
