//
//  ResizeImageToFitView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by MiharuNaruse on 2022/08/24.
//

// https://developer.apple.com/documentation/swiftui/fitting-images-into-available-space
// https://github.com/SDWebImage/SDWebImageSwiftUI#using-webimage-to-load-network-image

import SDWebImageSwiftUI
import SwiftUI

struct ResizeImageToFitView: View {
    private let imageURLString: String = "https://placekitten.com/300/300"

    var body: some View {
        WebImage(url: URL(string: imageURLString))
            .onSuccess { image, data, cacheType in
            }
            .resizable()
            .placeholder(Image(systemName: "photo"))
            .indicator(.activity)
            .transition(.fade(duration: 0.5))
            .scaledToFit()
            .frame(width: 150, height: 200, alignment: .center)
            .background(.red)
    }
}

struct ResizeImageToFitView_Previews: PreviewProvider {
    static var previews: some View {
        ResizeImageToFitView()
    }
}
