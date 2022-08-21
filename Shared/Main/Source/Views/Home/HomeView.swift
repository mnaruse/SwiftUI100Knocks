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
            Text("Hello, world!")
                .padding()
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
