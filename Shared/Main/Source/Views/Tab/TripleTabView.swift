//
//  TripleTabView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/15.
//

// https://developer.apple.com/documentation/swiftui/tabview

import SwiftUI

struct TripleTabView: View {
    var body: some View {
        TabView {
            TabFirstView()
                .badge(2)
                .tabItem {
                    Label("First", systemImage: "tray.and.arrow.down.fill")
                }

            TabSecondView()
                .tabItem {
                    Label("Second", systemImage: "tray.and.arrow.up.fill")
                }

            TabThirdView()
                .badge("あいう")
                .tabItem {
                    Label("Third", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct TripleTabView_Previews: PreviewProvider {
    static var previews: some View {
        TripleTabView()
    }
}
