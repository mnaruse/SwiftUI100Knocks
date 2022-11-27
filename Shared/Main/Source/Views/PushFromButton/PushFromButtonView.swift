//
//  PushFromButtonView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/23.
//

import SwiftUI

struct PushFromButtonView: View {
    @State private var isActive: Bool = false

    var body: some View {
        Button("Tap Me") {
            isActive = true
        }

        NavigationLink(isActive: $isActive) {
            PushFromButtonSecondView()
        } label: {
            EmptyView()
        }
    }
}

struct PushFromButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PushFromButtonView()
    }
}
