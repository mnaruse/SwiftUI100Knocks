//
//  PassValueBetweenScreensDetailView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/08/28.
//

import SwiftUI

struct PassValueBetweenScreensDetailView: View {
    let text: String

    var body: some View {
        Text(text)
    }
}

struct PassValueBetweenScreensDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PassValueBetweenScreensDetailView(text: "Apple")
    }
}
