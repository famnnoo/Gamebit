//
//  AddHabitView.swift
//  Gamebit
//
//  Created by Albert Rządziński on 26/10/2025.
//

import SwiftUI

struct AddHabitView: View {
    @Binding var habits: [Habit]
    @Environment(\.dismiss) var dismiss

    @State private var name: String = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Habit name", text: $name)
            }
            .navigationTitle("New Habit")
            .toolbar {
                Button("Save") {
                    let newHabit = Habit(name: name)
                    habits.append(newHabit)
                    dismiss()
                }
            }
        }
    }
}
