//
//  ShowAlertView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/21.
//

// Alert iOS 13.0 - 16.1 Deprecated
// Use a View modifier like alert(_:isPresented:presenting:actions:message:) instead.
// https://developer.apple.com/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:)-8584l

import SwiftUI

struct ShowAlertView: View {
    @State private var didError: Bool = false

    var body: some View {
        Button("Tap Me") {
            didError = true
        }
        .alert(
            "タイトル",
            isPresented: $didError
        ) {
            Button("ボタンその１", role: .cancel) {
                print("ボタンその１がタップされました。")
            }
            Button("ボタンその２", role: .destructive) {
                print("ボタンその２がタップされました。")
            }
        } message: {
            Text("メッセージ")
        }
    }
}

struct ShowAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ShowAlertView()
    }
}
