//
//  SwitchAlertAndSheetView.swift
//  SwiftUI100Knocks (iOS)
//
//  Created by 成瀬 未春 on 2022/11/21.
//

import SwiftUI

// MARK: - Main Type

struct SwitchAlertAndSheetView: View {
    // MARK: Structs

    struct ValidateErrorDetails: Identifiable {
        let id = UUID()
        let message: String
    }

    // MARK: Properties

    @State private var inputText: String = ""
    @State private var showSheet: Bool = false
    @State private var didError: Bool = false
    @State private var validateErrorDetails: ValidateErrorDetails?

    private let placeholder: String = "数字を入力してください。"

    // MARK: Body

    var body: some View {
        VStack(spacing: 16) {
            TextField(
                placeholder,
                text: $inputText
            )
            .textFieldStyle(.roundedBorder)
            .onSubmit {
                validateErrorDetails = validate()
                if validateErrorDetails == nil {
                    showSheet = true
                }
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .overlay(alignment: .trailing) {
                Button {
                    inputText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                }
                .foregroundColor(.secondary)
                .padding(.trailing)
            }

            Button {
                validateErrorDetails = validate()
                if validateErrorDetails == nil {
                    showSheet = true
                }
            } label: {
                Text("シートを表示")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showSheet) {
            Text("\(inputText) は数字です。")
        }
        .alert(
            "エラー",
            isPresented: $didError,
            presenting: validateErrorDetails
        ) { detail in
            Button("閉じる") {
            }
        } message: { detail in
            Text(detail.message)
        }
    }

    // MARK: Private Functions

    private func validate() -> ValidateErrorDetails? {
        if inputText.isEmpty {
            didError = true
            return ValidateErrorDetails(message: "未入力です。入力してください。")
        } else if Double(inputText) == nil {
            didError = true
            return ValidateErrorDetails(message: "\(inputText) は数字ではありません。")
        } else {
            return nil
        }
    }
}

// MARK: - Previews

struct SwitchAlertAndSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchAlertAndSheetView()
    }
}
