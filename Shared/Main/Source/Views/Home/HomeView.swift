//
//  HomeView.swift
//  Shared
//
//  Created by 成瀬 未春 on 2022/08/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        List {
            Section(header: Text("簡単")) {
                NavigationLink(destination: ResizeImageToFitView()) {
                    Text("画像をリサイズして表示(fit)")
                }
                NavigationLink(destination: ResizeImageAndClipView()) {
                    Text("画像をリサイズして表示(clip)")
                }
            }
        }
        .navigationTitle("100本ノック")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
