//
//  ContentView.swift
//  Gamebit
//
//  Created by Albert Rządziński on 26/10/2025.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView().frame(height: 100)
            HabitsListView().frame(maxHeight: .infinity)
            BottomBarView().frame(height: 100)
        }
        .background(Color("GameBoyGreen").ignoresSafeArea())
    }
}
