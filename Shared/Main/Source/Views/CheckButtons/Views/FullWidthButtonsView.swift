//
//  FullWidthButtonsView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/16.
//

import SwiftUI

struct FullWidthButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                Button {
                    // action
                } label: {
                    Text("borderedProminent")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                Button {
                    // action
                } label: {
                    Text("bordered")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
                Button {
                    // action
                } label: {
                    Text("borderless")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderless)
                Button {
                    // action
                } label: {
                    Text("plain")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.plain)
                Button {
                    // action
                } label: {
                    Text("automatic")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.automatic)
            }
            .padding()
        }
        .navigationTitle("Full Width Buttons")
    }
}

struct FullWidthButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FullWidthButtonsView()
        }
    }
}
