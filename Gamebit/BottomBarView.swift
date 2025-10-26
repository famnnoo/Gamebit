//
//  BottomBarView.swift
//  Gamebit
//
//  Created by Albert Rządziński on 26/10/2025.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
            Spacer()
            Image(systemName: "plus.circle.fill")
            Spacer()
            Image(systemName: "chart.bar.fill")
            Spacer()
        }
        .padding()
        .background(Color("GameBoyDark"))
    }
}
