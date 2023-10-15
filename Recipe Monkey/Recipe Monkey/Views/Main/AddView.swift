//
//  AddView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import SwiftUI

struct AddView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually") {
                showAddRecipe = true
            }
                .navigationTitle("New Recipe")
                .sheet(isPresented: $showAddRecipe) {
                        AddRecipeView()
                }
        }
    }
}

#Preview {
    AddView()
}
