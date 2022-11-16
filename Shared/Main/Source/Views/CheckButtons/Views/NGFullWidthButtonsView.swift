//
//  NGFullWidthButtonsView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/16.
//

import SwiftUI

struct NGFullWidthButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                ZStack {
                    Rectangle()
                        .fill(Color.accentColor)
                        .cornerRadius(10)

                    Text("Button に対して `.frame(maxWidth: .infinity)` をつけても、ボタンの幅は思ったように広がりません。\nButton 内の Text 等に対して、frame をつける必要があります。\n正しくは、 Full Width Buttons のコードを確認してください。")
                        .foregroundColor(.white)
                        .padding()
                }

                VStack(spacing: 32) {
                    Button("borderedProminent") {
                        // action
                    }
                    .buttonStyle(.borderedProminent)
                    .frame(maxWidth: .infinity)

                    Button("bordered") {
                        // action
                    }
                    .buttonStyle(.bordered)
                    .frame(maxWidth: .infinity)

                    Button("borderless") {
                        // action
                    }
                    .buttonStyle(.borderless)
                    .frame(maxWidth: .infinity)

                    Button("plain") {
                        // action
                    }
                    .buttonStyle(.plain)
                    .frame(maxWidth: .infinity)

                    Button("automatic") {
                        // action
                    }
                    .buttonStyle(.automatic)
                    .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .navigationTitle("NG Full Width Buttons")
    }
}

struct NGFullWidthButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NGFullWidthButtonsView()
        }
    }
}
