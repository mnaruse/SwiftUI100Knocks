//
//  CheckButtonsView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/15.
//

import SwiftUI

struct CheckButtonsView: View {
    var body: some View {
        List {
            NavigationLink("Natural Width Buttons") {
                NaturalWidthButtonsView()
            }
            NavigationLink("Full Width Buttons") {
                FullWidthButtonsView()
            }
            NavigationLink("NG Full Width Buttons") {
                NGFullWidthButtonsView()
            }
        }
        .navigationTitle("いろいろなボタン")
    }
}

struct CheckButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CheckButtonsView()
        }
    }
}
