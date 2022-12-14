//
//  HomeView.swift
//  Shared
//
//  Created by 成瀬 未春 on 2022/08/20.
//

import SwiftUI

// MARK: - Main Type

struct HomeView: View {
    // MARK: Enums

    /// 「簡単」セクションのリンク
    enum EasySectionLink: Int, CaseIterable, Identifiable {
        case resizeImageToFit
        case resizeImageAndClip
        case resizeImageToCircleWithBorder
        case imagesSideBySide
        case hideNavigationView
        case passValueBetweenScreens
        case showPicker
        case tripleTab
        case tapThenChangeText
        case checkButtons
        case showAlert

        var id: RawValue {
            return rawValue
        }

        var title: String {
            switch self {
            case .resizeImageToFit:
                return "画像をリサイズして表示(fit)"

            case .resizeImageAndClip:
                return "画像をリサイズして表示(clip)"

            case .resizeImageToCircleWithBorder:
                return "画像を丸く切り取り、枠を付ける"

            case .imagesSideBySide:
                return "画像を横に等間隔に並べる"

            case .hideNavigationView:
                return "NavigationViewを隠す"

            case .passValueBetweenScreens:
                return "画面遷移時に値を渡す"

            case .showPicker:
                return "Pickerを表示する"

            case .tripleTab:
                return "TabViewを使って画面を切り替える"

            case .tapThenChangeText:
                return "Buttonが押されたら文字を変える"

            case .checkButtons:
                return "いろいろなButtonを使ってみる"

            case .showAlert:
                return "アラートを表示する"
            }
        }

        @ViewBuilder var destination: some View {
            switch self {
            case .resizeImageToFit:
                ResizeImageToFitView()

            case .resizeImageAndClip:
                ResizeImageAndClipView()

            case .resizeImageToCircleWithBorder:
                ResizeImageToCircleWithBorderView()

            case .imagesSideBySide:
                ImagesSideBySideView()

            case .hideNavigationView:
                HideNavigationViewView()

            case .passValueBetweenScreens:
                PassValueBetweenScreensView()

            case .showPicker:
                ShowPickerView()

            case .tripleTab:
                TripleTabView()

            case .tapThenChangeText:
                TapThenChangeTextView()

            case .checkButtons:
                CheckButtonsView()

            case .showAlert:
                ShowAlertView()
            }
        }
    }

    /// 「ふつう」セクションのリンク
    enum NormalSectionLink: Int, CaseIterable, Identifiable {
        case switchAlertAndSheet
        case pushFromButton

        var id: RawValue {
            return rawValue
        }

        var title: String {
            switch self {
            case .switchAlertAndSheet:
                return "アラートとシートを出し分ける"

            case .pushFromButton:
                return "Buttonからプッシュ遷移をする（NavigationLinkを無効にする） "
            }
        }

        @ViewBuilder var destination: some View {
            switch self {
            case .switchAlertAndSheet:
                SwitchAlertAndSheetView()

            case .pushFromButton:
                PushFromButtonView()
            }
        }
    }

    // MARK: Body

    var body: some View {
        List {
            Section(header: Text("簡単")) {
                ForEach(EasySectionLink.allCases) { link in
                    NavigationLink(link.title) {
                        link.destination
                    }
                }
            }
            Section(header: Text("ふつう")) {
                ForEach(NormalSectionLink.allCases) { link in
                    NavigationLink(link.title) {
                        link.destination
                    }
                }
            }
        }
        .navigationTitle("100本ノック")
    }
}

// MARK: - Previews

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
