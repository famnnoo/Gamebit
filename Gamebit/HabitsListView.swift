//
//  HabitsListView.swift
//  Gamebit
//
//  Created by Albert Rządziński on 26/10/2025.
//

import SwiftUI

struct HabitsListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(0..<10) { i in
                    HStack {
                        Image(systemName: "star.fill")
                        Text("Habit \(i)")
                        Spacer()
                        Text("🔥 3")
                    }
                    .padding()
                    .background(Color("GameBoyDark"))
                    .cornerRadius(6)
                }
            }
            .padding(.horizontal)
        }
    }
}
