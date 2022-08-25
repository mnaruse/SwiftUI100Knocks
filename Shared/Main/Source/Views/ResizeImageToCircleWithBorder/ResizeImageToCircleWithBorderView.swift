//
//  ResizeImageToCircleWithBorderView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by MiharuNaruse on 2022/08/26.
//

// https://developer.apple.com/documentation/swiftui/view/clipshape(_:style:)

import SDWebImageSwiftUI
import SwiftUI

struct ResizeImageToCircleWithBorderView: View {
    private let imageURLString: String = "https://placekitten.com/300/300"

    var body: some View {
        WebImage(url: URL(string: imageURLString))
            .onSuccess(perform: { _, _, _ in

            })
            .placeholder(Image(systemName: "photo"))
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFill()
            .frame(width: 150, height: 150, alignment: .top)
            .clipShape(Circle())
    }
}

struct ResizeImageToCircleWithBorderView_Previews: PreviewProvider {
    static var previews: some View {
        ResizeImageToCircleWithBorderView()
    }
}
