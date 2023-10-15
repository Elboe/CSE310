//
//  AddRecipeView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/9/23.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String=""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String=""
    @State private var ingredients: String=""
    @State private var directions: String=""
    @State private var navigateToRecipe: Bool=false

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Name")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) {
                            category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink() {
                        RecipeView(recipe: Recipe.all[Recipe.all.count - 1])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Confirm", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
             
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
        .environmentObject(RecipesViewModel())
}

extension AddRecipeView {
    private func saveRecipe() {
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue)
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
