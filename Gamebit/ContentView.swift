//
//  ContentView.swift
//  Gamebit
//
//  Created by Albert Rządziński on 26/10/2025.
//

import SwiftUI

struct Habit: Identifiable {
    let id = UUID()
    var name: String
    var streak: Int = 0
    var lastCompleted: Date? = nil
}


struct ContentView: View {
    @State private var habits: [Habit] = []
    @State private var showingAddHabit = false

    var body: some View {
        NavigationView {
            List {
                ForEach(habits) { habit in
                    HStack {
                        Text(habit.name)
                        Spacer()
                        Text("🔥 \(habit.streak)")
                    }
                    .contentShape(Rectangle()) // makes full row tappable
                    .onTapGesture {
                        if let i = habits.firstIndex(where: { $0.id == habit.id }) {
                            habits[i].streak += 1
                            habits[i].lastCompleted = Date()
                        }
                    }
                }
            }

            .navigationTitle("Habits")
            .toolbar {
                Button(action: {
                    showingAddHabit = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddHabit) {
                AddHabitView(habits: $habits)
            }
        }
    }
}

