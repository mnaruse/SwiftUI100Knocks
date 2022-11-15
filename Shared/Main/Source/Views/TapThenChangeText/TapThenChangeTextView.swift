//
//  TapThenChangeTextView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/15.
//

import SwiftUI

struct TapThenChangeTextView: View {
    @State private var text: String = "Default"

    var body: some View {
        VStack {
            Text(text)

            Button {
                text = "Changed"
            } label: {
                Text("Tap Me")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct TapThenChangeTextView_Previews: PreviewProvider {
    static var previews: some View {
        TapThenChangeTextView()
    }
}
