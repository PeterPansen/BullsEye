//
//  RowView.swift
//  Bullseye
//
//  Created by Andreas Langbein on 17.04.24.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
        .stroke(Color.blue, lineWidth: 2)
        .frame(width: .infinity, height: 100)
        .cornerRadius(30)
        .overlay(
          HStack {
            RoundedTextView(text: "1")
            ScoreText(text: "10")
            DateText(text: "12:31")
          }
        )
    }
}

#Preview {
    RowView()
}
