//
//  RecipesView.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        ScrollView {
                            RecipeList(recipes: Recipe.all.filter{ $0.category == category.rawValue})
                                .navigationTitle(category.rawValue + "s")
                        }
                    }
                label: {
                    Text(category.rawValue + "s")
                    }
                .navigationTitle("Categories")
                }
            }
        }
    }
}

#Preview {
    RecipesView()
}
