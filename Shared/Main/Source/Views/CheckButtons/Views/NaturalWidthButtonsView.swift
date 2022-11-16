//
//  NaturalWidthButtonsView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/16.
//

import SwiftUI

struct NaturalWidthButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                Button("borderedProminent") {
                    // action
                }
                .buttonStyle(.borderedProminent)

                Button("bordered") {
                    // action
                }
                .buttonStyle(.bordered)

                Button("borderless") {
                    // action
                }
                .buttonStyle(.borderless)

                Button("plain") {
                    // action
                }
                .buttonStyle(.plain)

                Button("automatic") {
                    // action
                }
                .buttonStyle(.automatic)
            }
            .padding()
        }
        .navigationTitle("Natural Width Buttons")
    }
}

struct NaturalWidthButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NaturalWidthButtonsView()
        }
    }
}
