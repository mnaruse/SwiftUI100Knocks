//
//  ResizeImageAndClipView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by MiharuNaruse on 2022/08/25.
//

import SDWebImageSwiftUI
import SwiftUI

struct ResizeImageAndClipView: View {
    private let imageURLString: String = "https://placekitten.com/300/300"

    var body: some View {
        WebImage(url: URL(string: imageURLString))
            .onSuccess { image, data, cacheType in
            }
            .resizable()
            .placeholder(Image(systemName: "photo"))
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFill()
            .frame(width: 150, height: 200, alignment: .center)
            .clipped()
            .background(.red)
    }
}

struct ResizeImageAndClipView_Previews: PreviewProvider {
    static var previews: some View {
        ResizeImageAndClipView()
    }
}
