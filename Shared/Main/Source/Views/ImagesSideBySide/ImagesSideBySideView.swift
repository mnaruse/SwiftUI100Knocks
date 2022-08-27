//
//  ImagesSideBySideView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by MiharuNaruse on 2022/08/26.
//

import SwiftUI

struct ImagesSideBySideView: View {
    var body: some View {
        HStack {
            Asset.icon.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Asset.icon.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Asset.icon.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Asset.icon.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Asset.icon.swiftUIImage
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding()
    }
}

struct ImagesSideBySideView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesSideBySideView()
    }
}
